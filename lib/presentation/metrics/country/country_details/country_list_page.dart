import 'package:advista/application/advertising/advertising_bloc/advertising_bloc.dart';
import 'package:advista/presentation/core/widgets/banner_ad_widget.dart';
import 'package:advista/presentation/metrics/country/country_details/country_full_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/country/country_details/country_page_top_part.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_shimmer.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';

class CountryListPage extends StatelessWidget {
  const CountryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CountryWiseMetricsBloc>()
            ..add(const CountryWiseMetricsEvent.requsted()),
        ),
        BlocProvider(
          create: (context) => getIt<AdvertisingBloc>()
            ..add(const AdvertisingEvent.bannerRequested()),
        ),
      ],
      child: const _Handler(),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Countries'), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            const CountryPageTopWidget(),
            const MetricsList(notifierKey: 'CountryDataPage'),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                children: [
                  const SizedBox(height: 6),
                  BlocBuilder<CountryWiseMetricsBloc, CountryWiseMetricsState>(
                    builder: (context, state) {
                      return SizedBox();
                      // return state.map(
                      //   initial: (_) => const ShimmerCountryData(),
                      //   loading: (_) => const ShimmerCountryData(),
                      //   noDataFound: (_) => const BillBoard(),
                      //   loaded: (s) {
                      //     final list = s.metrics;
                      //     return CountryFullList(list: list);
                      //   },
                      //   failed: (f) {
                      //     return Center(
                      //       child: BillBoard(
                      //         text: mapMetricsFailuresToText(f.failures),
                      //       ),
                      //     );
                      //   },
                      // );
                    },
                  ),
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
