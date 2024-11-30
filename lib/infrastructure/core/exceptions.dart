// ignore_for_file: public_member_api_docs, sort_constructors_first
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

// UNVERIFIED
// class ServiceException implements Exception {
//   final String message;

//   /// Throws from [BaseService]
//   ServiceException(this.message);

//   @override
//   String toString() => 'ServiceException: $message';
// }
