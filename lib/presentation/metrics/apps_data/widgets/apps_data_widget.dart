import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:advista/presentation/core/widgets/simple_button.dart';
import 'package:advista/presentation/core/widgets/square_avatar.dart';
import 'package:advista/presentation/metrics/apps_data/pages/apps_data_list_page.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:advista/utils/styles/theme.dart';
import 'package:flutter/material.dart';

class AppsDataWidget extends StatelessWidget {
  const AppsDataWidget({
    super.key,
    required this.appsDataList,
    required this.metricsTitle,
    required this.timeRange,
  });

  final List<AppsMetrics> appsDataList;
  final MetricsTitle metricsTitle;
  final TimeRange timeRange;

  @override
  Widget build(BuildContext context) {
    final bool showAllButton = appsDataList.length > 3;
    final sortedList = sortAppsMetricsList(metricsTitle, appsDataList);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: showAllButton ? 3 : appsDataList.length,
          itemBuilder: (context, index) {
            final data = sortedList[index];
            return ListTile(
              // leading: SquareAvatar(
              //   size: 30,
              //   fallbackText: "${index + 1}",
              //   color: Theme.of(context).primaryColor,
              // ),
              title: Text(
                data.appDisplayLabel,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text(
                _mapTitleToData(metricsTitle, data),
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
        if (showAllButton)
          SimpleButton(
            text: 'Show All',
            onPressed: () {
              navigateTo(context, AppsDataListPage(timeRange, sortedList));
            },
            primaryColor: Theme.of(context).primaryColor,
            secondaryColor: Theme.of(context).buttonTheme.secondaryColor,
            fill: false,
          ),
      ],
    );
  }
}

String _mapTitleToData(
  MetricsTitle title,
  AppsMetrics metrics,
) {
  cprint('AKL', metrics.toString());
  switch (title) {
    case MetricsTitle.earnings:
      return metrics.metrics.earnings.toStringAsFixed(4);
    case MetricsTitle.impression:
      return metrics.metrics.impression.toString();
    case MetricsTitle.requests:
      return metrics.metrics.requests.toString();
    case MetricsTitle.clicks:
      return metrics.metrics.clicks.toString();
    case MetricsTitle.eCPM:
      return metrics.metrics.eCPM.toStringAsFixed(2);
    case MetricsTitle.matchRate:
      return metrics.metrics.matchRate.toStringAsFixed(2);
    default:
      return 'Unknown metrics';
  }
}
