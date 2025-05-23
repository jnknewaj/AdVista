import 'dart:async';
import 'dart:convert';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/utils/api_consts.dart';
import 'package:advista/utils/string_consts.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

//**
// DEPENDENTS
// - [TokenStorageService]
// */

@LazySingleton()
class TokenApiClient {
  final http.Client _httpClient;

  TokenApiClient(this._httpClient);

  ///  [NGB] - a http.post() function
  /// Exchanges the authorization code for tokens.
  ///
  /// Returns:
  /// - A [Future] containing the raw JSON data (decoded as `Map<String, dynamic>`) if successful.
  ///
  /// - Explicitly throws [ServerException] when http response code is other than 200
  ///
  /// **Other potential exceptions are not handled.**
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

  ///  [NGB] - a http.post() function
  ///  Refreshes the access token using the provided refresh token.
  ///
  /// Returns:
  /// - A [Future] containing the raw JSON data (decoded as `Map<String, dynamic>`)
  ///   from the server if the request is successful.
  ///
  ///  This response includes a idToken, but no refreshToken
  ///
  /// - Explicitly throws [ServerException] when http response code is other than 200
  ///
  /// **Other potential exceptions are not handled.**
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
    final response = await _httpClient
        .post(
          url,
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          body: body,
        )
        .timeout(const Duration(seconds: 15));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      final error = jsonDecode(response.body);
      throw ServerException(
        message:
            'Request Failed. Error : ${error['error_description'] ?? 'Unknown'}',
        code: 'Status Code : ${response.statusCode}',
      );
    }
  }
}
