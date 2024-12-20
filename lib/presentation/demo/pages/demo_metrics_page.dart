import 'package:advista/application/advertising/native_ad/native_ad_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/core/widgets/native_ad_widget.dart';
import 'package:advista/presentation/demo/widgets/demo_ad_unit_metrics_view.dart';
import 'package:advista/presentation/demo/widgets/demo_country_metrics_view.dart';
import 'package:advista/presentation/demo/widgets/demo_dashboard_top_part.dart';
import 'package:advista/presentation/demo/widgets/demo_metrics_summary_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoMetricsPage extends StatelessWidget {
  const DemoMetricsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NativeAdBloc>(),
        )
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('AdVista Demo'), centerTitle: true),
        body: const _Handler(),
      ),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<NativeAdBloc, NativeAdState>(
          listener: (context, state) {},
        )
      ],
      child: SafeArea(
        child: Column(
          children: [
            const DemoDashboardTopPart(),
            Expanded(
              child: ListView(
                children: const [
                  DemoMetricsSummaryView(),
                  Divider(),
                  DemoCountryMetricsView(),
                  Divider(),
                  // BlocBuilder<NativeAdBloc, NativeAdState>(
                  //   builder: (context, state) {
                  //     return state.maybeMap(
                  //       loaded: (s) => NativeAdWidget(
                  //         nativeAd: s.nativeAd,
                  //         size: NativeAdSize.large,
                  //       ),
                  //       orElse: () => const SizedBox(),
                  //     );
                  //   },
                  // ),
                  DemoAdUnitMetricsView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
