part of 'ad_unit_metrics_bloc.dart';

@freezed
class AdUnitMetricsEvent with _$AdUnitMetricsEvent {
  const factory AdUnitMetricsEvent.started() = _Started;
}