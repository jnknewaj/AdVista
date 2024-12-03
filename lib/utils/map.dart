import 'package:advista/domain/auth/token_failures.dart';
import 'package:advista/infrastructure/core/exceptions.dart';

Exception mapTokenFailuresToException(TokenFailures failures) {
  return failures.maybeMap(
    notFound: (e) => TokenNotFoundException('Token not found : F2E'),
    orElse: () => Exception('From F2E'),
  );
}
