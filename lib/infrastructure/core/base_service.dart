import 'dart:convert';
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
    try {
      final response = await _httpClient.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw HttpException(
          response.statusCode,
          response.body,
        );
      }
    } catch (e) {
      throw ServiceException('Unexpected error: $e');
    }
  }

  /// Sends a GET request and returns the parsed JSON response
  Future<Map<String, dynamic>> get({
    required String url,
    required Map<String, String> headers,
  }) async {
    try {
      final response = await _httpClient.get(
        Uri.parse(url),
        headers: headers,
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw HttpException(
          response.statusCode,
          response.body,
        );
      }
    } catch (e) {
      throw ServiceException('Unexpected error: $e');
    }
  }
}

class HttpException implements Exception {
  final int statusCode;
  final String responseBody;

  HttpException(this.statusCode, this.responseBody);

  @override
  String toString() => 'HttpException($statusCode): $responseBody';
}

class ServiceException implements Exception {
  final String message;

  ServiceException(this.message);

  @override
  String toString() => 'ServiceException: $message';
}
