import 'package:advista/domain/metrics/i_metrics_repository.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'todays_metrics_event.dart';
part 'todays_metrics_state.dart';
part 'todays_metrics_bloc.freezed.dart';

@injectable
class TodaysMetricsBloc extends Bloc<TodaysMetricsEvent, TodaysMetricsState> {
  final IMetricsRepository _repository;
  TodaysMetricsBloc(this._repository)
      : super(const TodaysMetricsState.initial()) {
    on<TodaysMetricsEvent>(_onEvents);
  }

  Future<void> _onEvents(
    TodaysMetricsEvent event,
    Emitter<TodaysMetricsState> emit,
  ) async {
    await event.map(
      requsted: (e) async {
        emit(const TodaysMetricsState.loading());
        final result = await _repository.getTodaysMetrics();
        result.fold(
          (f) {
            emit(TodaysMetricsState.failed(f));
          },
          (s) {
            emit(TodaysMetricsState.loaded(s));
          },
        );
      },
    );
  }
}
