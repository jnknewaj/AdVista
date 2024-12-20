import 'package:advista/application/advertising/advertising_bloc/advertising_bloc.dart';
import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/presentation/core/widgets/banner_ad_widget.dart';
import 'package:advista/presentation/metrics/ad_unit/ad_unit_details/ad_unit_full_list.dart';
import 'package:advista/presentation/metrics/ad_unit/ad_unit_details/ad_unit_page_top_part.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:advista/injection.dart';

class AdUnitListPage extends StatelessWidget {
  const AdUnitListPage(this.timeRange, this.adUnitDataList);

  final List<AdUnitMetrics> adUnitDataList;
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
      child: _Handler(timeRange, adUnitDataList),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler(this.timeRange, this.adUnitDataList);

  final List<AdUnitMetrics> adUnitDataList;
  final TimeRange timeRange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ad Units'), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.only(top: 3, left: 3, right: 8, bottom: 10),
              child: Text(
                timeRangeToString(timeRange),
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const MetricsList(notifierKey: 'AdUnitDetailsPage'),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                children: [
                  const SizedBox(height: 6),
                  AdUnitFullList(list: adUnitDataList),
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
