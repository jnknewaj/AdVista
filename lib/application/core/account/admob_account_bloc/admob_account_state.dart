part of 'admob_account_bloc.dart';

@freezed
class AdmobAccountState with _$AdmobAccountState {
  const factory AdmobAccountState.initial() = _Initial;
  const factory AdmobAccountState.loading() = _Loading;
  const factory AdmobAccountState.loaded(AdmobAccount account) = _Loaded;
  const factory AdmobAccountState.failed(AccountFailures failures) = _Failed;

  // id storage related
  const factory AdmobAccountState.idInfoFound() = _IdInfoFound;
  const factory AdmobAccountState.idInfoNotFound() = _IdInfoNotFound;
}
