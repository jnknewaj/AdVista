// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/presentation/metrics/country/country_details/country_page_top_part.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_shimmer.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/country/widgets/list_item.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/dimension_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/country_name_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/widgets/time_range_item.dart';

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
          children: [
            CountryPageTopWidget(),
            Expanded(
              child: ListView(
                children: [
                  DimensionList(notifierKey: 'CountryDataPage'),
                  BlocBuilder<CountryWiseMetricsBloc, CountryWiseMetricsState>(
                    builder: (context, state) {
                      return state.map(
                        initial: (_) => const ShimmerCountryData(),
                        loading: (_) => const ShimmerCountryData(),
                        noDataFound: (_) => const NoDataWidget(),
                        loaded: (s) {
                          final list = s.metrics;
                          return _CountryFullList(list: list);
                        },
                        failed: (f) {
                          return Center(
                            child: Text('Error'),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CountryFullList extends ConsumerWidget {
  const _CountryFullList({
    super.key,
    required this.list,
  });

  final List<CountryMetrics> list;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dimensionTitle = ref.watch(titleProvider('CountryDataPage'));
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final data = list[index];
        return ListItem(
          flag: getFlagEmoji(data.country),
          country: getCountryName(data.country),
          value: mapCountryMetricsToData(dimensionTitle, data),
        );
      },
    );
  }
}

class ItemSelectableHorizontalList extends StatelessWidget {
  final List<Widget> children;
  final ValueChanged<int> onItemSelected;
  final int? selectedIndex;
  final double itemHeight;
  final double itemWidth;

  const ItemSelectableHorizontalList({
    Key? key,
    required this.children,
    required this.onItemSelected,
    this.selectedIndex,
    this.itemHeight = 60.0, // Default height
    this.itemWidth = 100.0, // Default width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: children.length,
        itemBuilder: (context, index) {
          final child = children[index];

          return GestureDetector(
            onTap: () => onItemSelected(index),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedIndex == index ? Colors.blue : Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }
}
