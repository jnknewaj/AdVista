part of 'apps_data_bloc_bloc.dart';

@freezed
class AppsDataBlocEvent with _$AppsDataBlocEvent {
  const factory AppsDataBlocEvent.getAllAppsRequested() = _GetAllAppsRequested;
}
