import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/metrics/i_metrics_repository.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ad_unit_metrics_event.dart';
part 'ad_unit_metrics_state.dart';
part 'ad_unit_metrics_bloc.freezed.dart';

@injectable
class AdUnitMetricsBloc extends Bloc<AdUnitMetricsEvent, AdUnitMetricsState> {
  final IMetricsRepository _repository;
  final DateService _dateService;

  AdUnitMetricsBloc(this._repository, this._dateService)
      : super(const AdUnitMetricsState.initial()) {
    on<AdUnitMetricsEvent>(_onEvents);
  }

  Future<void> _onEvents(
    AdUnitMetricsEvent event,
    Emitter<AdUnitMetricsState> emit,
  ) async {
    await event.map(
      requsted: (e) async {
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
    Emitter<AdUnitMetricsState> emit,
  ) async {
    emit(const AdUnitMetricsState.loading());
    final result = await _repository.getAdUnitMetrics(
      DateTimeRange(
        start: range.start,
        end: range.end,
      ),
    );
    result.fold(
      (f) => emit(AdUnitMetricsState.failed(f)),
      (s) {
        if (s.isEmpty) {
          emit(const AdUnitMetricsState.noDataFound());
        } else {
          emit(AdUnitMetricsState.loaded(s));
        }
      },
    );
  }
}
