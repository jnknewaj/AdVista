// ignore_for_file: public_member_api_docs, sort_constructors_first
class TokenNotFoundException implements Exception {
  final String? message;
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
