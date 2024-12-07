import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/presentation/metrics/widgets/clip_card.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MetricsHorizontalList extends ConsumerWidget {
  const MetricsHorizontalList({
    super.key,
    required this.metricsTitle,
    required this.onEarningsTap,
    required this.onImpressionTap,
    required this.onReqTap,
    required this.onClicksTap,
    required this.oneCPMTap,
    required this.oneMatchRateTap,
  });

  final MetricsTitle metricsTitle;
  final Function()? onEarningsTap;
  final Function()? onImpressionTap;
  final Function()? onReqTap;
  final Function()? onClicksTap;
  final Function()? oneCPMTap;
  final Function()? oneMatchRateTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      height: screenHeightPortion(context, .05),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ClipCard(
            text: 'Earnings',
            isActive: metricsTitle == MetricsTitle.earnings,
            onTap: onEarningsTap,
          ),
          ClipCard(
              text: 'Impression',
              isActive: metricsTitle == MetricsTitle.impression,
              onTap: onImpressionTap),
          ClipCard(
              text: 'Requests',
              isActive: metricsTitle == MetricsTitle.requests,
              onTap: onReqTap),
          ClipCard(
              text: 'Clicks',
              isActive: metricsTitle == MetricsTitle.clicks,
              onTap: onClicksTap),
          ClipCard(
            text: 'eCPM',
            isActive: metricsTitle == MetricsTitle.eCPM,
            onTap: oneCPMTap,
          ),
          ClipCard(
            text: 'Match Rate',
            isActive: metricsTitle == MetricsTitle.matchRate,
            onTap: oneMatchRateTap,
          ),
        ],
      ),
    );
  }
}
