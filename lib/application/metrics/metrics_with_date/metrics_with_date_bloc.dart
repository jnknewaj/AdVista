import 'package:advista/domain/metrics/i_metrics_repository.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/domain/metrics/metrics_with_date.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'metrics_with_date_event.dart';
part 'metrics_with_date_state.dart';
part 'metrics_with_date_bloc.freezed.dart';

@injectable
class MetricsWithDateBloc
    extends Bloc<MetricsWithDateEvent, MetricsWithDateState> {
  final IMetricsRepository _repository;
  final DateService _dateService;

  MetricsWithDateBloc(
    this._repository,
    this._dateService,
  ) : super(const MetricsWithDateState.initial()) {
    on<MetricsWithDateEvent>(_onEvents);
  }

  Future<void> _onEvents(
    MetricsWithDateEvent event,
    Emitter<MetricsWithDateState> emit,
  ) async {
    await event.map(
      started: (e) async {
        emit(const MetricsWithDateState.loading());
        final dateRange = _dateService.getLast7DaysRange();
        final result = await _repository.getMetricsForDateDimension(dateRange);
        result.fold(
          (f) => emit(MetricsWithDateState.failure(f)),
          (s) => emit(MetricsWithDateState.loaded(s)),
        );
      },
      twelveMonthsRequested: (e) async {
        emit(const MetricsWithDateState.loading());
        final dateRange = _dateService.getLast12Months();
        final result = await _repository.getMetricsForMonthDimension(dateRange);
        result.fold(
          (f) => emit(MetricsWithDateState.failure(f)),
          (s) => emit(MetricsWithDateState.loaded(s)),
        );
      },
      last5YearsRequested: (e) async {
        emit(const MetricsWithDateState.loading());
        final dateRange = _dateService.generateYearlyDateRanges(5);
        final result = await _repository.getMetricsForFiveYears(dateRange);
        result.fold(
          (f) => emit(MetricsWithDateState.failure(f)),
          (s) => emit(MetricsWithDateState.loaded(s)),
        );
      },
    );
  }
}
