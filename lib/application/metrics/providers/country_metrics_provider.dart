import 'package:flutter_riverpod/flutter_riverpod.dart';

enum MetricsTitle {
  earnings,
  impression,
  requests,
  clicks,
  eCPM,
  matchRate,
}

final metricsTitleNotifierProvider =
    NotifierProvider<MetricsTitleNotifier, MetricsTitle>(
        () => MetricsTitleNotifier()); // to be used CountryMetricsView

final metricsTitleNotifierProvider2 =
    NotifierProvider<MetricsTitleNotifier, MetricsTitle>(
        () => MetricsTitleNotifier()); // to be used AdUnitMetricsView

class MetricsTitleNotifier extends Notifier<MetricsTitle> {
  @override
  MetricsTitle build() => MetricsTitle.earnings;

  void setMetricsTitle(MetricsTitle metricsTitle) {
    state = metricsTitle;
  }
}
