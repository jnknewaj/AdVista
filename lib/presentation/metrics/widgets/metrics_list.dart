import 'package:advista/presentation/metrics/widgets/metrics_horizontal_list.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MetricsList extends ConsumerWidget {
  final String notifierKey;
  const MetricsList({
    super.key,
    required this.notifierKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(titleProvider(notifierKey));
    final notifier = ref.watch(titleProvider(notifierKey).notifier);

    return MetricsHorizontalList(
      metricsTitle: title,
      onEarningsTap: () {
        notifier.setMetricsTitle(MetricsTitle.earnings);
      },
      onImpressionTap: () {
        notifier.setMetricsTitle(MetricsTitle.impression);
      },
      onReqTap: () {
        notifier.setMetricsTitle(MetricsTitle.requests);
      },
      onClicksTap: () {
        notifier.setMetricsTitle(MetricsTitle.clicks);
      },
      oneCPMTap: () {
        notifier.setMetricsTitle(MetricsTitle.eCPM);
      },
      oneMatchRateTap: () {
        notifier.setMetricsTitle(MetricsTitle.matchRate);
      },
    );
  }
}

class TitleNotifier extends StateNotifier<MetricsTitle> {
  TitleNotifier() : super(MetricsTitle.earnings);

  void setMetricsTitle(MetricsTitle metricsTitle) {
    state = metricsTitle;
  }
}

final titleProvider = StateNotifierProvider.autoDispose
    .family<TitleNotifier, MetricsTitle, String>(
  (ref, key) => TitleNotifier(),
);
