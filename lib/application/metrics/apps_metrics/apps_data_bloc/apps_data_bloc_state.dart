part of 'apps_data_bloc_bloc.dart';

@freezed
class AppsDataBlocState with _$AppsDataBlocState {
  const factory AppsDataBlocState.initial() = _Initial;
  const factory AppsDataBlocState.loading() = _Loading;
  const factory AppsDataBlocState.loaded(List<Apps> apps) = _Loaded;
  const factory AppsDataBlocState.noAppYet() = _NoAppYet;
  const factory AppsDataBlocState.failed(AppsDataFailures failures) = _Failed;
}
