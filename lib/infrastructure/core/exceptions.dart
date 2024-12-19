// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class TokenNotFoundException implements Exception {
  final String message;
  TokenNotFoundException(this.message);
}

class UnknownException implements Exception {
  final String? message;
  UnknownException({this.message});
}

class IdNotFoundException implements Exception {
  final String msg;
  IdNotFoundException({required this.msg});
}

class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);
}

class ServerException implements Exception {
  final String code;
  final String message;
  ServerException({required this.message, required this.code});
}

class ParsingException implements Exception {
  final String message;
  ParsingException(this.message);
}

class HtmlException implements Exception {
  final String message;
  HtmlException(this.message);
}

class NoUnpaidPaymentException extends TlsException {
  final String msg;

  NoUnpaidPaymentException(this.msg);
}
