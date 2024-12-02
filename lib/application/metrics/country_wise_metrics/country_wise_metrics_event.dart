part of 'country_wise_metrics_bloc.dart';

@freezed
class CountryWiseMetricsEvent with _$CountryWiseMetricsEvent {
  const factory CountryWiseMetricsEvent.requsted() = _Requested;
  const factory CountryWiseMetricsEvent.requstedYesterday() =
      _RequestedYesterday;
  const factory CountryWiseMetricsEvent.requsted7days() = _Requested7days;
  const factory CountryWiseMetricsEvent.requstedThisMonth() =
      _requstedThisMonth;
  const factory CountryWiseMetricsEvent.requstedLastMonth() =
      _requstedLastMonth;
  const factory CountryWiseMetricsEvent.requstedThisYear() = _requstedThisYear;
  const factory CountryWiseMetricsEvent.requstedLastYear() = _requstedLastYear;
  const factory CountryWiseMetricsEvent.requstedLifeTime() = _requstedLifeTime;
  const factory CountryWiseMetricsEvent.requstedCustom(
    DateTime start,
    DateTime end,
  ) = _requstedCustom;
}
