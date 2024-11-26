class TokenNotFoundException implements Exception {
  final String? message;
  TokenNotFoundException(this.message);
}

class UnknownException implements Exception {
  final String? message;
  UnknownException({this.message});
}
