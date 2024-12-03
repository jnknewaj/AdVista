// ignore_for_file: prefer_const_constructors

import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/country/widgets/country_page_top_part.dart';
import 'package:advista/presentation/metrics/summary/widgets/dashboard_top_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryDataPage extends StatelessWidget {
  const CountryDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CountryWiseMetricsBloc>()
            ..add(const CountryWiseMetricsEvent.requsted()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<CountryWiseMetricsBloc, CountryWiseMetricsState>(
            listener: (context, state) {},
          ),
        ],
        child: _Handler(),
      ),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Countries')),
      body: SafeArea(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
