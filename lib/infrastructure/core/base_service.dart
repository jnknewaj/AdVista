import 'dart:convert';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton()
class BaseService {
  final http.Client _httpClient;

  BaseService(this._httpClient);

  /// Sends a POST request and returns the parsed JSON response
  Future<Map<String, dynamic>> post({
    required String url,
    required Map<String, String> headers,
    required Map<String, dynamic> body,
  }) async {
    final response = await _httpClient.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw ServerException(
          message: response.body, code: response.statusCode.toString());
    }
  }

  /// Sends a GET request and returns the parsed JSON response
  Future<Map<String, dynamic>> get({
    required String url,
    required Map<String, String> headers,
  }) async {
    final response = await _httpClient.get(
      Uri.parse(url),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw ServerException(
          message: response.body, code: response.statusCode.toString());
    }
  }
}
