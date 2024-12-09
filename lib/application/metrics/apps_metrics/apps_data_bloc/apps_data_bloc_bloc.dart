// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:advista/domain/apps_metrics/apps.dart';
import 'package:advista/domain/apps_metrics/apps_data_failures.dart';
import 'package:advista/domain/apps_metrics/i_apps_data_repository.dart';
import 'package:injectable/injectable.dart';

part 'apps_data_bloc_bloc.freezed.dart';
part 'apps_data_bloc_event.dart';
part 'apps_data_bloc_state.dart';

@injectable
class AppsDataBlocBloc extends Bloc<AppsDataBlocEvent, AppsDataBlocState> {
  final IAppsDataRepository _repository;
  AppsDataBlocBloc(
    this._repository,
  ) : super(const AppsDataBlocState.initial()) {
    on<AppsDataBlocEvent>(_onEvents);
  }

  Future<void> _onEvents(
    AppsDataBlocEvent event,
    Emitter<AppsDataBlocState> emit,
  ) async {
    await event.map(
      getAllAppsRequested: (e) async {
        emit(const AppsDataBlocState.loading());
        final result = await _repository.getApps();
        result.fold(
          (f) => emit(AppsDataBlocState.failed(f)),
          (data) {
            if (data.isEmpty) {
              emit(const AppsDataBlocState.noAppYet());
            } else {
              emit(AppsDataBlocState.loaded(data));
            }
          },
        );
      },
    );
  }
}
