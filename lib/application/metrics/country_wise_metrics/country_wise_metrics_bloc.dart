import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/domain/metrics/i_metrics_repository.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'country_wise_metrics_event.dart';
part 'country_wise_metrics_state.dart';
part 'country_wise_metrics_bloc.freezed.dart';

@injectable
class CountryWiseMetricsBloc
    extends Bloc<CountryWiseMetricsEvent, CountryWiseMetricsState> {
  final IMetricsRepository _repository;
  final DateService _dateService;

  CountryWiseMetricsBloc(this._repository, this._dateService)
      : super(const CountryWiseMetricsState.initial()) {
    on<CountryWiseMetricsEvent>(_onEvents);
  }

  Future<void> _onEvents(
    CountryWiseMetricsEvent event,
    Emitter<CountryWiseMetricsState> emit,
  ) async {
    await event.map(
      requsted: (e) async {
        cprint('CTY', 'event called');
        final range = DateTimeRange(start: DateTime.now(), end: DateTime.now());
        await _handleMatricsEvent(range, emit);
      },
      requstedYesterday: (e) async {
        final yesterday = _dateService.getYesterday();
        final range = DateTimeRange(start: yesterday, end: yesterday);
        await _handleMatricsEvent(range, emit);
      },
      requsted7days: (e) async {
        final range = _dateService.getLast7DaysRange();
        await _handleMatricsEvent(range, emit);
      },
      requstedThisMonth: (e) async {
        await _handleMatricsEvent(
          _dateService.getCurrentMonth(),
          emit,
        );
      },
      requstedLastMonth: (e) async {
        await _handleMatricsEvent(
          _dateService.getLastMonth(),
          emit,
        );
      },
      requstedThisYear: (e) async {
        await _handleMatricsEvent(
          _dateService.getThisYear(),
          emit,
        );
      },
      requstedLastYear: (e) async {
        await _handleMatricsEvent(
          _dateService.getLastYear(),
          emit,
        );
      },
      requstedLifeTime: (e) async {},
      requstedCustom: (e) async {
        await _handleMatricsEvent(
          DateTimeRange(
            start: e.start,
            end: e.end,
          ),
          emit,
        );
      },
    );
  }

  Future<void> _handleMatricsEvent(
    DateTimeRange range,
    Emitter<CountryWiseMetricsState> emit,
  ) async {
    emit(const CountryWiseMetricsState.loading());
    cprint('CTY', 'bloc called');
    final result = await _repository.getCountryMetrics(
      DateTimeRange(
        start: range.start,
        end: range.end,
      ),
    );
    result.fold(
      (f) => emit(CountryWiseMetricsState.failed(f)),
      (s) {
        if (s.isEmpty) {
          emit(const CountryWiseMetricsState.noDataFound());
        } else {
          emit(CountryWiseMetricsState.loaded(s));
        }
      },
    );
  }
}
