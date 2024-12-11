import 'package:advista/application/advertising/native_ad/native_ad_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/demo/widgets/demo_country_full_list.dart';
import 'package:advista/presentation/demo/widgets/demo_country_page_top_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoCountryListPage extends StatelessWidget {
  const DemoCountryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NativeAdBloc>(),
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
            const DemoCountryPageTopWidget(),
            const MetricsList(notifierKey: 'DemoCountryListPage'),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                children: [
                  DemoCountryFullList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
