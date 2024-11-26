part of 'admob_account_bloc.dart';

@freezed
class AdmobAccountEvent with _$AdmobAccountEvent {
  /// Apart from getting account info, storing account id is also done inside
  /// this event.
  ///
  /// Potential Flaw : While storing, exception is not handled. To do later.
  const factory AdmobAccountEvent.accountInfoRequested() =
      _AccountInfoRequested;

  /// To check if admob id is stored in storage
  const factory AdmobAccountEvent.checkedAccountId() = _CheckedAccountId;
}
