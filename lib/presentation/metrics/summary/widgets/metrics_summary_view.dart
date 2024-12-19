import 'package:advista/application/advertising/interstitial/interstitial_bloc/interstial_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/presentation/charts/metrics/pages/metrics_chart_page.dart';
import 'package:advista/presentation/metrics/summary/widgets/grid_item_loading_widget.dart';
import 'package:advista/presentation/metrics/summary/widgets/metrics_item.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MetricsSummaryView extends StatelessWidget {
  const MetricsSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodaysMetricsBloc, TodaysMetricsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Metrics",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'See Chart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onTap: () {
                      context
                          .read<InterstialBloc>()
                          .add(const InterstialEvent.showAd());
                      navigateTo(context, const MetricsChartPage());
                    },
                  ),
                ],
              ),
              const SizedBox(height: 5),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.7,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return state.maybeMap(
                    orElse: () => const GridItemLoadingWidget(),
                    loaded: (data) {
                      return MetricsItem(
                        topText: _mapIndexToTopText(index, data.metrics),
                        bottomText: _mapIndexToBottomText(index),
                      );
                    },
                    failed: (f) {
                      return Text(
                        f.failures.maybeMap(
                          networkFailure: (e) => e.msg,
                          timeout: (e) => e.msg,
                          parsingFailure: (e) => e.msg,
                          tokenNotFound: (e) => e.msg,
                          serverFailure: (e) => e.msg,
                          idNotFound: (e) => e.msg,
                          unknown: (e) => e.msg,
                          orElse: () =>
                              "Unknown, probably from Country dimension",
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

String _mapIndexToBottomText(int index) {
  switch (index) {
    case 0:
      return 'Earnings';
    case 1:
      return 'Impression';
    case 2:
      return 'Requests';
    case 3:
      return 'Clicks';
    case 4:
      return 'eCPM';
    case 5:
      return 'Match Rate';
    default:
      return 'Unexpected Index';
  }
}

String _mapIndexToTopText(int index, Metrics metrics) {
  switch (index) {
    case 0:
      return metrics.earnings.toStringAsFixed(3);
    case 1:
      return metrics.impression.toString();
    case 2:
      return metrics.requests.toString();
    case 3:
      return metrics.clicks.toString();
    case 4:
      return metrics.eCPM.toStringAsFixed(2);
    case 5:
      return metrics.matchRate.toStringAsFixed(2);
    default:
      return 'Unexpected Index';
  }
}
