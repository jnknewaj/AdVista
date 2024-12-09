import 'package:freezed_annotation/freezed_annotation.dart';

part 'apps_data_failures.freezed.dart';

@freezed
class AppsDataFailures with _$AppsDataFailures {
  const factory AppsDataFailures.idNotFound(String msg) = IdNotFound;
  const factory AppsDataFailures.serverFailure(String msg) = ServerFailure;
  const factory AppsDataFailures.networkFailure(String msg) = NetworkFailure;
  const factory AppsDataFailures.timeoutFailure(String msg) = TimeoutFailure;
  const factory AppsDataFailures.tokenNotFoundFailure(String msg) =
      ParsingFailure;
  const factory AppsDataFailures.htmlFailure(String msg) = HtmlFailure;
  const factory AppsDataFailures.unknown(String msg) = Unknown;
}
