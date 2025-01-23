import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final metricsTitleNotifierProvider =
    NotifierProvider<MetricsTitleNotifier, MetricsTitle>(
        () => MetricsTitleNotifier()); // to be used CountryMetricsView

final metricsTitleNotifierProvider2 =
    NotifierProvider<MetricsTitleNotifier, MetricsTitle>(
        () => MetricsTitleNotifier()); // to be used AdUnitMetricsView

final metricsTitleNotifierProvider3 =
    NotifierProvider<MetricsTitleNotifier, MetricsTitle>(
        () => MetricsTitleNotifier()); // to be usee with AppMetricsView

class MetricsTitleNotifier extends Notifier<MetricsTitle> {
  @override
  MetricsTitle build() => MetricsTitle.earnings;

  void setMetricsTitle(MetricsTitle metricsTitle) {
    state = metricsTitle;
  }
}
