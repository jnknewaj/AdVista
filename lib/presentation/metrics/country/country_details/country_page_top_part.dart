import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/presentation/metrics/widgets/clip_card.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CountryPageTopWidget extends HookWidget {
  final TimeRange timeRange;
  const CountryPageTopWidget(this.timeRange);

  @override
  Widget build(BuildContext context) {
    final timeRangeState = useState(timeRange);
    return Container(
      height: screenHeightPortion(context, 0.09),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: screenHeightPortion(context, 0.06) * 0.85,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ClipCard(
                  text: 'Today',
                  isActive: timeRangeState.value == TimeRange.today,
                  onTap: () {
                    timeRangeState.value = TimeRange.today;
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requsted());
                  },
                ),
                ClipCard(
                  text: 'Yesterday',
                  isActive: timeRangeState.value == TimeRange.yesterday,
                  onTap: () {
                    timeRangeState.value = TimeRange.yesterday;
                    cprint('IHN', timeRangeState.value.toString());
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedYesterday());
                  },
                ),
                ClipCard(
                  text: 'Last 7 Days',
                  isActive: timeRangeState.value == TimeRange.last7Days,
                  onTap: () {
                    timeRangeState.value = TimeRange.last7Days;
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requsted7days());
                  },
                ),
                ClipCard(
                  text: 'This Month',
                  isActive: timeRangeState.value == TimeRange.thisMonth,
                  onTap: () {
                    timeRangeState.value = TimeRange.thisMonth;
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedThisMonth());
                  },
                ),
                ClipCard(
                  text: 'Last Month',
                  isActive: timeRangeState.value == TimeRange.lastMonth,
                  onTap: () {
                    timeRangeState.value = TimeRange.lastMonth;
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedLastMonth());
                  },
                ),
                ClipCard(
                  text: 'This Year',
                  isActive: timeRangeState.value == TimeRange.thisYear,
                  onTap: () {
                    timeRangeState.value = TimeRange.thisYear;
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedThisYear());
                  },
                ),
                ClipCard(
                  text: 'All Time',
                  isActive: timeRangeState.value == TimeRange.allTime,
                  onTap: () {
                    timeRangeState.value = TimeRange.allTime;
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedLifeTime());
                  },
                ),
                ClipCard(
                  text: 'Custom',
                  isActive: timeRangeState.value == TimeRange.custom,
                  onTap: () async {
                    timeRangeState.value = TimeRange.custom;
                    final countryBloc = context.read<CountryWiseMetricsBloc>();
                    final dateRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2010),
                      lastDate: DateTime.now(),
                    );

                    if (dateRange != null) {
                      countryBloc.add(CountryWiseMetricsEvent.requstedCustom(
                        dateRange.start,
                        dateRange.end,
                      ));
                    }
                  },
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 3, left: 3, right: 8),
            child: Text(
              timeRangeToString(timeRangeState.value),
              style: TextStyle(
                color: Theme.of(context).primaryColor, // check if color suits
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
