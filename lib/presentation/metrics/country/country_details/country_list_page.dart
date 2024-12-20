import 'package:advista/application/advertising/advertising_bloc/advertising_bloc.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/presentation/core/widgets/banner_ad_widget.dart';
import 'package:advista/presentation/metrics/country/country_details/country_full_list.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';

class CountryListPage extends StatelessWidget {
  final TimeRange timeRange;
  final List<CountryMetrics> countryDataList;
  const CountryListPage(
    this.timeRange,
    this.countryDataList,
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AdvertisingBloc>()
            ..add(const AdvertisingEvent.bannerRequested()),
        ),
      ],
      child: _Handler(timeRange, countryDataList),
    );
  }
}

class _Handler extends StatelessWidget {
  final TimeRange timeRange;
  final List<CountryMetrics> countryDataList;
  const _Handler(this.timeRange, this.countryDataList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Countries'), centerTitle: true),
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
            const MetricsList(notifierKey: 'CountryDataPage'),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                children: [
                  const SizedBox(height: 6),
                  CountryFullList(list: countryDataList),
                ],
              ),
            ),
            BlocBuilder<AdvertisingBloc, AdvertisingState>(
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (s) {
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
