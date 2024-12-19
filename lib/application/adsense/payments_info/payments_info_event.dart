part of 'payments_info_bloc.dart';

@freezed
class PaymentsInfoEvent with _$PaymentsInfoEvent {
  const factory PaymentsInfoEvent.requestedBalance() = _RequestedBalance;
  const factory PaymentsInfoEvent.requestedPaymentsInfo() =
      _RequestedPaymentsInfo;
}
