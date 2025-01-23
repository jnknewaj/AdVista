import 'package:advista/domain/auth/token_failures.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
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

String mapMetricsFailuresToString(MetricsFailures failures) {
  return failures.map(
    networkFailure: (s) => s.msg,
    timeout: (s) => s.msg,
    parsingFailure: (s) => s.msg,
    tokenNotFound: (s) => s.msg,
    serverFailure: (s) => s.msg,
    idNotFound: (s) => s.msg,
    unknown: (s) => s.msg,
    invalidCountryCode: (s) => "Invalid Country Code",
    noDataForCountry: (s) => "No Data Found For The Country : ${s.toString()}",
  );
}
