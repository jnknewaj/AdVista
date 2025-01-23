import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:advista/presentation/core/widgets/square_avatar.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppsDataFullList extends ConsumerWidget {
  final List<AppsMetrics> list;
  const AppsDataFullList({super.key, required this.list});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dimensionTitle =
        ref.watch(titleProvider('AppsDataListPage')); // check key
    final sortedList = sortAppsMetricsList(dimensionTitle, list);

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final data = sortedList[index];
        return ListTile(
          leading: SquareAvatar(
            size: 45,
            fallbackText: "${index + 1}",
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            data.appDisplayLabel,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text('Android/iOS'),
          trailing: Text(
            mapAppsMetricsToText(dimensionTitle, data),
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}
