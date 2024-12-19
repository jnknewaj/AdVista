import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/core/i_account_repository.dart';
import 'package:advista/domain/metrics/i_metrics_repository.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'ad_unit_metrics_event.dart';
part 'ad_unit_metrics_state.dart';
part 'ad_unit_metrics_bloc.freezed.dart';
part 'ad_unit_metrics_bloc.g.dart';

@injectable
class AdUnitMetricsBloc
    extends HydratedBloc<AdUnitMetricsEvent, AdUnitMetricsState> {
  final IMetricsRepository _repository;
  final DateService _dateService;
  final IAccountRepository _accountRepository;

  AdUnitMetricsBloc(
      this._repository, this._dateService, this._accountRepository)
      : super(AdUnitMetricsState.initial()) {
    on<AdUnitMetricsEvent>(_onEvents);
  }

  Future<void> _onEvents(
    AdUnitMetricsEvent event,
    Emitter<AdUnitMetricsState> emit,
  ) async {
    await event.map(
      requsted: (e) async {
        if (state.todayMetrics != null && !e.forceRefresh) {
          emit(state);
          return;
        }
        emit(state.copyWith(isLoading: true, todayError: null));
        final range = DateTimeRange(start: DateTime.now(), end: DateTime.now());
        final result = await _repository.getAdUnitMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              todayError: mapMetricsFailuresToText(l),
            ),
          ),
          (r) => emit(state.copyWith(isLoading: false, todayMetrics: r)),
        );
      },
      requstedYesterday: (e) async {
        if (state.yesterdayMetrics != null && !e.forceRefresh) {
          emit(state);
          return;
        }
        emit(state.copyWith(isLoading: true, yesterdayError: null));
        final yesterday = _dateService.getYesterday();
        final range = DateTimeRange(start: yesterday, end: yesterday);
        final result = await _repository.getAdUnitMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              yesterdayError: mapMetricsFailuresToText(l),
            ),
          ),
          (r) => emit(state.copyWith(isLoading: false, yesterdayMetrics: r)),
        );
      },
      requsted7days: (e) async {
        if (state.sevenDaysMetrics != null && !e.forceRefresh) {
          emit(state);
          return;
        }
        emit(state.copyWith(isLoading: true, last7DaysError: null));
        final range = _dateService.getLast7DaysRange();
        final result = await _repository.getAdUnitMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              last7DaysError: mapMetricsFailuresToText(l),
            ),
          ),
          (r) => emit(state.copyWith(isLoading: false, sevenDaysMetrics: r)),
        );
      },
      requstedThisMonth: (e) async {
        if (state.thisMonthMetrics != null && !e.forceRefresh) {
          emit(state);
          return;
        }
        emit(state.copyWith(isLoading: true, thisMonthError: null));
        final range = _dateService.getCurrentMonth();
        final result = await _repository.getAdUnitMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              thisMonthError: mapMetricsFailuresToText(l),
            ),
          ),
          (r) => emit(state.copyWith(isLoading: false, thisMonthMetrics: r)),
        );
      },
      requstedLastMonth: (e) async {
        if (state.lastMonthMetrics != null && !e.forceRefresh) {
          emit(state);
          return;
        }
        emit(state.copyWith(isLoading: true, lastMonthError: null));
        final range = _dateService.getLastMonth();
        final result = await _repository.getAdUnitMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              lastMonthError: mapMetricsFailuresToText(l),
            ),
          ),
          (r) => emit(state.copyWith(isLoading: false, lastMonthMetrics: r)),
        );
      },
      requstedThisYear: (e) async {
        if (state.thisYearsMetrics != null && !e.forceRefresh) {
          emit(state);
          return;
        }
        emit(state.copyWith(isLoading: true, thisYearError: null));
        final range = _dateService.getThisYear();
        final result = await _repository.getAdUnitMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              thisYearError: mapMetricsFailuresToText(l),
            ),
          ),
          (r) => emit(state.copyWith(isLoading: false, thisYearsMetrics: r)),
        );
      },
      requstedLastYear: (e) async {
        if (state.lastYearsMetrics != null && !e.forceRefresh) {
          emit(state);
          return;
        }
        emit(state.copyWith(isLoading: true, lastYearError: null));
        final range = _dateService.getLastYear();
        final result = await _repository.getAdUnitMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              lastYearError: mapMetricsFailuresToText(l),
            ),
          ),
          (r) => emit(state.copyWith(isLoading: false, lastYearsMetrics: r)),
        );
      },
      requstedLifeTime: (e) async {
        if (state.lifeTimeMetrics != null && !e.forceRefresh) {
          emit(state);
          return;
        }
        emit(state.copyWith(isLoading: true, lifeTimeError: null));

        final acOpenDateEither =
            await _accountRepository.getAccoutOpeningDate();
        await acOpenDateEither.fold(
          (f) async => emit(
              state.copyWith(lifeTimeError: "Failed To Get A/C Opening Date")),
          (s) async {
            final startDate = stringToDateTime(s);
            final range = DateTimeRange(start: startDate, end: DateTime.now());
            final result = await _repository.getAdUnitMetrics(range);
            result.fold(
              (l) => emit(
                state.copyWith(
                  isLoading: false,
                  lifeTimeError: mapMetricsFailuresToText(l),
                ),
              ),
              (r) => emit(state.copyWith(isLoading: false, lifeTimeMetrics: r)),
            );
          },
        );
      },
      requstedCustom: (e) async {
        emit(state.copyWith(isLoading: true, customError: null));
        final range = DateTimeRange(start: e.start, end: e.end);
        final result = await _repository.getAdUnitMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              customError: mapMetricsFailuresToText(l),
            ),
          ),
          (r) => emit(state.copyWith(isLoading: false, customMetrics: r)),
        );
      },
    );
  }

  @override
  AdUnitMetricsState? fromJson(Map<String, dynamic> json) {
    try {
      return AdUnitMetricsState.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AdUnitMetricsState state) {
    return state.toJson();
  }
}
