import 'package:advista/application/advertising/advertising_bloc/advertising_bloc.dart';
import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:advista/presentation/core/widgets/banner_ad_widget.dart';
import 'package:advista/presentation/metrics/ad_unit/ad_unit_details/ad_unit_full_list.dart';
import 'package:advista/presentation/metrics/apps_data/widgets/apps_data_full_list.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:advista/injection.dart';

/// Displayed when 'Show All' is clicked in [MetricsPage].
/// Just Like [AdUnitListPage], [CountryListPage]
///
/// Confusion Alert: AppsListPage is another page that triggers api/apps endpoint which is not related to metrics
class AppsDataListPage extends StatelessWidget {
  const AppsDataListPage(this.timeRange, this.dataList);

  final List<AppsMetrics> dataList;
  final TimeRange timeRange;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AdvertisingBloc>()
            ..add(const AdvertisingEvent.bannerRequested()),
        )
      ],
      child: _Handler(timeRange, dataList),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler(this.timeRange, this.dataList);

  final List<AppsMetrics> dataList;
  final TimeRange timeRange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Apps'), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                top: 3,
                left: 3,
                right: 8,
                bottom: 10,
              ),
              child: Text(
                timeRangeToString(timeRange),
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const MetricsList(notifierKey: 'AppsDataListPage'),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                children: [
                  const SizedBox(height: 6),
                  AppsDataFullList(list: dataList),
                ],
              ),
            ),
            BlocBuilder<AdvertisingBloc, AdvertisingState>(
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (s) {
                    cprint('SLV',
                        'ADWIDGET HERE : ${s.bannerAd.size.height.toDouble()}');
                    return BannerAdWidget(bannerAd: s.bannerAd);
                  },
                  orElse: () => const SizedBox(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
