part of 'payments_info_bloc.dart';

@freezed
class PaymentsInfoState with _$PaymentsInfoState {
  const factory PaymentsInfoState.initial() = _Initial;
  const factory PaymentsInfoState.loading() = _Loading;
  const factory PaymentsInfoState.loadedBalance(Payments payments) =
      _LoadedBalance;
  const factory PaymentsInfoState.loadedPaymentsInfo(List<Payments> infoList) =
      _LoadedPaymentsInfo;
  const factory PaymentsInfoState.failure(PaymentsFailures failure) = _Failure;
}
