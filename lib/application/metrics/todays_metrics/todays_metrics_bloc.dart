import 'package:advista/domain/core/i_account_repository.dart';
import 'package:advista/domain/metrics/i_metrics_repository.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/infrastructure/metrics/metrics_dto.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'todays_metrics_event.dart';
part 'todays_metrics_state.dart';
part 'todays_metrics_bloc.freezed.dart';

@injectable
class TodaysMetricsBloc
    extends HydratedBloc<TodaysMetricsEvent, TodaysMetricsState> {
  final IMetricsRepository _repository;
  final IAccountRepository _accountRepository;
  final DateService _dateService;

  TodaysMetricsBloc(
    this._repository,
    this._dateService,
    this._accountRepository,
  ) : super(const TodaysMetricsState.initial()) {
    on<TodaysMetricsEvent>(_onEvents);
  }

  Future<void> _onEvents(
    TodaysMetricsEvent event,
    Emitter<TodaysMetricsState> emit,
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
        await _handleMatricsEvent(_dateService.getCurrentMonth(), emit);
      },
      requstedLastMonth: (e) async {
        await _handleMatricsEvent(_dateService.getLastMonth(), emit);
      },
      requstedThisYear: (e) async {
        await _handleMatricsEvent(_dateService.getThisYear(), emit);
      },
      requstedLastYear: (e) async {
        await _handleMatricsEvent(_dateService.getLastYear(), emit);
      },
      requstedLifeTime: (e) async {
        final acOpenDateEither =
            await _accountRepository.getAccoutOpeningDate();
        await acOpenDateEither.fold(
          (f) async => emit(const TodaysMetricsState.failed(
              MetricsFailures.unknown('Failed to fetch account opening date'))),
          (s) async {
            final startDate = stringToDateTime(s);
            await _handleMatricsEvent(
                DateTimeRange(start: startDate, end: DateTime.now()), emit);
          },
        );
      },
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
    Emitter<TodaysMetricsState> emit,
  ) async {
    emit(const TodaysMetricsState.loading());
    final result = await _repository.getMetrics(
      DateTimeRange(
        start: range.start,
        end: range.end,
      ),
    );
    result.fold(
      (f) => emit(TodaysMetricsState.failed(f)),
      (s) => emit(TodaysMetricsState.loaded(s)),
    );
  }

  @override
  TodaysMetricsState? fromJson(Map<String, dynamic> json) {
    cprint('PRS', 'FromJSon');
    try {
      final metricsDto = Metricsdto.fromHydratedBloc(json);
      return TodaysMetricsState.loaded(metricsDto.toDomain());
    } catch (e) {
      cprint('PRS Err', e.toString());
      return const TodaysMetricsState.initial();
    }
  }

  @override
  Map<String, dynamic>? toJson(TodaysMetricsState state) {
    cprint('PRS', 'toJson');
    return state.maybeWhen(
      loaded: (metrics) => Metricsdto.fromDomain(metrics).toJson(),
      orElse: () => null,
    );
  }
}
