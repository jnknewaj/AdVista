import 'package:advista/domain/apps_metrics/apps_data_failures.dart';
import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:advista/domain/apps_metrics/i_apps_data_repository.dart';
import 'package:advista/domain/core/i_account_repository.dart';
import 'package:advista/infrastructure/apps_metrics/apps_metrics_dto.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'apps_metrics_event.dart';
part 'apps_metrics_state.dart';
part 'apps_metrics_bloc.freezed.dart';

@injectable
class AppsMetricsBloc extends HydratedBloc<AppsMetricsEvent, AppsMetricsState> {
  final IAppsDataRepository _repository;
  final DateService _dateService;
  final IAccountRepository _accountRepository;

  AppsMetricsBloc(
    this._repository,
    this._dateService,
    this._accountRepository,
  ) : super(const AppsMetricsState.initial()) {
    on<AppsMetricsEvent>(_onEvents);
  }

  Future<void> _onEvents(
    AppsMetricsEvent event,
    Emitter<AppsMetricsState> emit,
  ) async {
    await event.map(
      requsted: (e) async {
        emit(const AppsMetricsState.loading());
        final range = DateTimeRange(start: DateTime.now(), end: DateTime.now());
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (f) => emit(AppsMetricsState.failure(f)),
          (s) => emit(AppsMetricsState.loadedToday(s)),
        );
      },
      requstedYesterday: (e) async {
        emit(const AppsMetricsState.loading());
        final yesterday = _dateService.getYesterday();
        final range = DateTimeRange(start: yesterday, end: yesterday);
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (f) => emit(AppsMetricsState.failure(f)),
          (s) => emit(AppsMetricsState.loadedYesterday(s)),
        );
      },
      requsted7days: (e) async {
        final range = _dateService.getLast7DaysRange();
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (f) => emit(AppsMetricsState.failure(f)),
          (s) => emit(AppsMetricsState.loaded7Days(s)),
        );
      },
      requstedThisMonth: (e) async {
        final range = _dateService.getCurrentMonth();
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (f) => emit(AppsMetricsState.failure(f)),
          (s) => emit(AppsMetricsState.loadedThisMonth(s)),
        );
      },
      requstedLastMonth: (e) async {
        final range = _dateService.getLastMonth();
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (f) => emit(AppsMetricsState.failure(f)),
          (s) => emit(AppsMetricsState.loadedLastMonth(s)),
        );
      },
      requstedThisYear: (e) async {
        final range = _dateService.getThisYear();
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (f) => emit(AppsMetricsState.failure(f)),
          (s) => emit(AppsMetricsState.loadedThisYear(s)),
        );
      },
      requstedLastYear: (e) async {
        final range = _dateService.getLastYear();
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (f) => emit(AppsMetricsState.failure(f)),
          (s) => emit(AppsMetricsState.loadedLastYear(s)),
        );
      },
      requstedLifeTime: (e) async {
        final acOpenDateEither =
            await _accountRepository.getAccoutOpeningDate();
        await acOpenDateEither.fold(
          (f) async => emit(const AppsMetricsState.failure(
              AppsDataFailures.unknown(
                  'Failed to fetch account opening date'))),
          (s) async {
            final startDate = stringToDateTime(s);
            final range = DateTimeRange(start: startDate, end: DateTime.now());
            final result = await _repository.getAppsMetrics(range);
            result.fold(
              (f) => emit(AppsMetricsState.failure(f)),
              (s) => emit(AppsMetricsState.loadedAllTime(s)),
            );
          },
        );
      },
      requstedCustom: (e) async {
        final range = DateTimeRange(start: e.start, end: e.end);
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (f) => emit(AppsMetricsState.failure(f)),
          (s) => emit(AppsMetricsState.loadedAllTime(s)),
        );
      },
    );
  }

  @override
  AppsMetricsState? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(AppsMetricsState state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
