import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/presentation/core/widgets/item_selectable_horizontal_list.dart';
import 'package:advista/presentation/metrics/country/country_details/country_data_page.dart';
import 'package:advista/presentation/metrics/widgets/clip_card.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DimensionList extends ConsumerWidget {
  final String notifierKey;
  const DimensionList({
    super.key,
    required this.notifierKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(titleProvider(notifierKey));
    final notifier = ref.watch(titleProvider(notifierKey).notifier);
    return SizedBox(
      height: screenHeightPortion(context, 0.06),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ClipCard(
            text: 'Earnings',
            isActive: title == MetricsTitle.earnings,
            onTap: () {
              notifier.setMetricsTitle(MetricsTitle.earnings);
            },
          ),
          ClipCard(
            text: 'Impression',
            isActive: title == MetricsTitle.impression,
            onTap: () {
              notifier.setMetricsTitle(MetricsTitle.impression);
            },
          ),
          ClipCard(
            text: 'Clicks',
            isActive: title == MetricsTitle.clicks,
            onTap: () {
              notifier.setMetricsTitle(MetricsTitle.clicks);
            },
          ),
          ClipCard(
            text: 'Requests',
            isActive: title == MetricsTitle.requests,
            onTap: () {
              notifier.setMetricsTitle(MetricsTitle.requests);
            },
          ),
          ClipCard(
            text: 'eCPM',
            isActive: title == MetricsTitle.eCPM,
            onTap: () {
              notifier.setMetricsTitle(MetricsTitle.eCPM);
            },
          ),
          ClipCard(
            text: 'Match Rate',
            isActive: title == MetricsTitle.matchRate,
            onTap: () {
              notifier.setMetricsTitle(MetricsTitle.matchRate);
            },
          ),
        ],
      ),
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
