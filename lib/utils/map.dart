import 'package:advista/domain/auth/token_failures.dart';
import 'package:advista/infrastructure/core/exceptions.dart';

Exception mapTokenFailuresToException(TokenFailures failures) {
  return failures.map(
    notFound: (e) => TokenNotFoundException('Token Not Found'),
    expired: (_) => TokenNotFoundException('Expired'),
    serverError: (e) => ServerException(
        message: e.msg ?? 'Server Error with null in msg',
        code: 'Server error and lower level for code and message'),
    unknown: (e) => UnknownException(message: 'Msg : ${e.msg} code: ${e.code}'),
  );
}
