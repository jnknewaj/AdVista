import 'package:advista/application/advertising/native_ad/native_ad_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/demo/widgets/demo_ad_unit_full_list.dart';
import 'package:advista/presentation/demo/widgets/demo_ad_unit_page_top_part.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoAdUnitListPage extends StatelessWidget {
  const DemoAdUnitListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<NativeAdBloc>()..add(const NativeAdEvent.started()),
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
      appBar: AppBar(title: const Text('Ad Units'), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            //const DemoAdUnitPageTopPart(),
            const MetricsList(notifierKey: 'DemoAdUnitListPage'),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                children: const [
                  DemoAdUnitFullList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
