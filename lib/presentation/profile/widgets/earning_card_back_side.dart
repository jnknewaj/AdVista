import 'package:advista/application/core/account/ac_opening_date_bloc/ac_opening_date_bloc.dart';
import 'package:advista/application/core/account/admob_account_bloc/admob_account_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EarningCardBackSide extends StatelessWidget {
  const EarningCardBackSide({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff007B8A),
              Color(0xff00B4CC),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Card ID section (no transformation applied)
            BlocBuilder<AdmobAccountBloc, AdmobAccountState>(
              builder: (context, state) {
                final text = state.maybeMap(
                  loaded: (s) => 'Id : ${s.account.publisherId}',
                  failed: (_) => 'Failed to load account info',
                  orElse: () => '',
                );

                return Text(
                  text,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            const SizedBox(height: 8),

            // Total Earnings section
            BlocBuilder<TodaysMetricsBloc, TodaysMetricsState>(
              builder: (context, state) {
                final earning = state.maybeMap(
                  loaded: (s) => s.metrics.earnings.toStringAsFixed(2),
                  failed: (e) => 'Failed to load earnings data',
                  orElse: () => '',
                );
                return Text(
                  "Total Earnings: \$$earning",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(0.8),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Total earnings may be adjusted by AdMob.",
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Divider(color: Colors.white, thickness: 0.5),
            // Cardholder Information
            BlocBuilder<AcOpeningDateBloc, AcOpeningDateState>(
              builder: (context, state) {
                final date = state.maybeMap(
                  loaded: (s) => s.date,
                  failed: (_) => 'Failed to load info',
                  orElse: () => '',
                );
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Since : $date",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
