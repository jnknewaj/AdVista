import 'dart:convert';
import 'dart:io';
import 'package:advista/utils/api_consts.dart';
import 'package:advista/utils/string_consts.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton()
class TokenApiClient {
  final http.Client _httpClient;

  TokenApiClient(this._httpClient);

  /// Returns raw json data
  ///
  /// Throws [HttpException]
  Future<Map<String, dynamic>?> exchangeAuthCodeForTokens(
    String authCode,
  ) async {
    return _post(
      Uri.parse(TOKEN_ENDPOINT),
      {
        'code': authCode,
        'client_id': CLIENT_ID,
        'client_secret': CLIENT_SECRET,
        'redirect_uri': '',
        'grant_type': 'authorization_code',
        'access_type': 'offline',
        'prompt': 'consent',
      },
    );
  }

  /// Returns raw json data
  ///
  /// Throws [HttpException]
  Future<Map<String, dynamic>> refreshAccessToken(String refreshToken) async {
    return _post(
      Uri.parse(TOKEN_ENDPOINT),
      {
        'client_id': CLIENT_ID,
        'client_secret': CLIENT_SECRET,
        'refresh_token': refreshToken,
        'grant_type': 'refresh_token',
      },
    );
  }

  Future<Map<String, dynamic>> _post(
    Uri url,
    Map<String, String> body,
  ) async {
    try {
      final response = await _httpClient.post(
        url,
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: body,
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        final error = jsonDecode(response.body);
        throw HttpException(
          'Request failed. Status code: ${response.statusCode}, '
          'Error: ${error['error_description'] ?? 'Unknown'}',
        );
      }
    } catch (e) {
      throw HttpException('An unexpected error occurred: $e');
    }
  }
}
