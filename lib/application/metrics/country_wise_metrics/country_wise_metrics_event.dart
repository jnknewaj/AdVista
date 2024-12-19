part of 'country_wise_metrics_bloc.dart';

@freezed
class CountryWiseMetricsEvent with _$CountryWiseMetricsEvent {
  const factory CountryWiseMetricsEvent.requsted({
    @Default(false) bool forceRefresh,
  }) = _Requested;
  const factory CountryWiseMetricsEvent.requstedYesterday({
    @Default(false) bool forceRefresh,
  }) = _RequestedYesterday;
  const factory CountryWiseMetricsEvent.requsted7days({
    @Default(false) bool forceRefresh,
  }) = _Requested7days;
  const factory CountryWiseMetricsEvent.requstedThisMonth({
    @Default(false) bool forceRefresh,
  }) = _requstedThisMonth;
  const factory CountryWiseMetricsEvent.requstedLastMonth({
    @Default(false) bool forceRefresh,
  }) = _requstedLastMonth;
  const factory CountryWiseMetricsEvent.requstedThisYear({
    @Default(false) bool forceRefresh,
  }) = _requstedThisYear;
  const factory CountryWiseMetricsEvent.requstedLastYear({
    @Default(false) bool forceRefresh,
  }) = _requstedLastYear;
  const factory CountryWiseMetricsEvent.requstedLifeTime({
    @Default(false) bool forceRefresh,
  }) = _requstedLifeTime;
  const factory CountryWiseMetricsEvent.requstedCustom(
    DateTime start,
    DateTime end,
  ) = _requstedCustom;
}
