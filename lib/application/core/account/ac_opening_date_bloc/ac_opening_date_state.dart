part of 'ac_opening_date_bloc.dart';

@freezed
class AcOpeningDateState with _$AcOpeningDateState {
  const factory AcOpeningDateState.initial() = _Initial;
  const factory AcOpeningDateState.loading() = _Loading;
  const factory AcOpeningDateState.loaded(String date) = _Loaded;
  const factory AcOpeningDateState.failed(AccountFailures failure) = _Failed;
}
