import 'package:advista/domain/metrics/i_metrics_repository.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/domain/metrics/metrics_summary.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'metrics_summary_event.dart';
part 'metrics_summary_state.dart';
part 'metrics_summary_bloc.freezed.dart';

@injectable
class MetricsSummaryBloc
    extends Bloc<MetricsSummaryEvent, MetricsSummaryState> {
  final IMetricsRepository _repository;

  MetricsSummaryBloc(this._repository)
      : super(const MetricsSummaryState.initial()) {
    on<MetricsSummaryEvent>(_onEvents);
  }

  Future<void> _onEvents(
    MetricsSummaryEvent event,
    Emitter<MetricsSummaryState> emit,
  ) async {
    event.map(
      fetchSummaryRequested: (e) async {
        emit(const MetricsSummaryState.loading());
        final result = await _repository.getMetricsSummary(e.endDate);
        result.fold(
          (l) => emit(MetricsSummaryState.failed(l)),
          (r) => emit(MetricsSummaryState.loaded(r)),
        );
      },
    );
  }
}
