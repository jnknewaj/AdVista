import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:advista/domain/apps_metrics/apps.dart';
import 'package:advista/domain/auth/i_token_repository.dart';
import 'package:advista/domain/auth/token_failures.dart';
import 'package:advista/infrastructure/apps_metrics/apps_dto.dart';
import 'package:advista/infrastructure/core/account_service.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/infrastructure/metrics/metrics_service_helper.dart';
import 'package:advista/utils/helper.dart';
import 'package:advista/utils/map.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton()
class AppsDataService {
  /// to find admob id
  final AccountService _accountService;
  final http.Client _httpClient;

  /// to get accessToken
  final ITokenRepository _tokenRepository;

  AppsDataService(
      this._accountService, this._httpClient, this._tokenRepository);

  /// Throws [HtmlException]
  Future<String?> fetchAndroidAppIcon(String packageName) async {
    final url = 'https://play.google.com/store/apps/details?id=$packageName';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final document = parse(response.body);
      final metaTag = document.querySelector('meta[property="og:image"]');
      return metaTag?.attributes['content'];
    }
    return null;
  }

  /// Throws
  /// - [TokenNotFoundException]
  /// - Other exception maping [TokenFailures]
  ///
  Future<String> _provideAccessToken() async {
    final accessTokenEither = await _tokenRepository.getValidAccessToken();

    if (accessTokenEither.isLeft()) {
      throw mapTokenFailuresToException(accessTokenEither.getLeft() ??
          const TokenFailures.unknown(msg: 'F2E'));
    }

    final accessToken = accessTokenEither.getRight();

    if (accessToken == null) {
      throw TokenNotFoundException('Access token not found in repository');
    }

    return accessToken;
  }

  Future<List<Apps>> fetchApps() async {
    try {
      final accountId = await _accountService.getAccountId();
      if (accountId == null) {
        throw IdNotFoundException(msg: 'Account Id Not Found in Storage');
      }
      final accessToken = await _provideAccessToken();

      final url = 'https://admob.googleapis.com/v1/accounts/$accountId/apps';

      final response = await _httpClient.get(
        Uri.parse(url),
        headers: buildHeaders(accessToken),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        final List<Apps> apps = [];

        for (final appData in (data['apps'] as List)) {
          final dto = AppsDto.fromApiResponse(appData);
          var domain = dto.toDomain();

          // TODO : Optimize this icon fetching as its now very much time consuming
          // If packageName exists, fetch the app icon URL
          // if (dto.linkedAppInfo != null) {
          //   final packageName = dto.linkedAppInfo?.appStoreId;

          //   if (packageName != null) {
          //     final appIconUrl = await fetchAndroidAppIcon(packageName);
          //     domain = domain.copyWith(appIconUrl: appIconUrl);
          //   }
          // }

          apps.add(domain);
        }

        return apps;
      } else {
        throw ServerException(
          message: 'Exception in http response.',
          code: 'Code : ${response.statusCode}',
        );
      }
    } on SocketException catch (_) {
      throw NetworkException('Check Network');
    } on TimeoutException catch (_) {
      throw TimeoutException('The request timed out.');
    } on ParsingException catch (_) {
      rethrow;
    } on TokenNotFoundException catch (_) {
      rethrow;
    } on ServerException catch (e) {
      throw ServerException(message: e.message, code: e.code);
    } on IdNotFoundException catch (_) {
      rethrow;
    } on HtmlException catch (_) {
      rethrow;
    }
  }
}
