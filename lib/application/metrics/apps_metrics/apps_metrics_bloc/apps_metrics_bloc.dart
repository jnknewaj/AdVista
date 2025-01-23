import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:advista/domain/apps_metrics/i_apps_data_repository.dart';
import 'package:advista/domain/core/i_account_repository.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'apps_metrics_event.dart';
part 'apps_metrics_state.dart';
part 'apps_metrics_bloc.freezed.dart';
part 'apps_metrics_bloc.g.dart';

@injectable
class AppsMetricsBloc extends HydratedBloc<AppsMetricsEvent, AppsMetricsState> {
  final IAppsDataRepository _repository;
  final DateService _dateService;
  final IAccountRepository _accountRepository;

  AppsMetricsBloc(
    this._repository,
    this._dateService,
    this._accountRepository,
  ) : super(AppsMetricsState.initial()) {
    on<AppsMetricsEvent>(_onEvents);
  }

  Future<void> _onEvents(
    AppsMetricsEvent event,
    Emitter<AppsMetricsState> emit,
  ) async {
    await event.map(
      requsted: (e) async {
        if (state.todayMetrics != null && !e.forceRefresh) {
          emit(state);
          return;
        }
        emit(state.copyWith(isLoading: true, todayError: null));
        final range = DateTimeRange(start: DateTime.now(), end: DateTime.now());
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              todayError: mapAppsDataFailuresToText(l),
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
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              yesterdayError: mapAppsDataFailuresToText(l),
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
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              last7DaysError: mapAppsDataFailuresToText(l),
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
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              thisMonthError: mapAppsDataFailuresToText(l),
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
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              lastMonthError: mapAppsDataFailuresToText(l),
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
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              thisYearError: mapAppsDataFailuresToText(l),
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
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              lastYearError: mapAppsDataFailuresToText(l),
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
            final result = await _repository.getAppsMetrics(range);
            result.fold(
              (l) => emit(
                state.copyWith(
                  isLoading: false,
                  lifeTimeError: mapAppsDataFailuresToText(l),
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
        final result = await _repository.getAppsMetrics(range);
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              customError: mapAppsDataFailuresToText(l),
            ),
          ),
          (r) => emit(state.copyWith(isLoading: false, customMetrics: r)),
        );
      },
    );
  }

  @override
  AppsMetricsState? fromJson(Map<String, dynamic> json) {
    try {
      return AppsMetricsState.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AppsMetricsState state) {
    return state.toJson();
  }
}
