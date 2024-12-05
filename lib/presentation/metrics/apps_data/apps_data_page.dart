import 'package:advista/application/metrics/apps_metrics/apps_data_bloc/apps_data_bloc_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/core/widgets/circular_image_holder.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppsDataPage extends StatelessWidget {
  const AppsDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AppsDataBlocBloc>()
            ..add(const AppsDataBlocEvent.getAllAppsRequested()),
        ),
      ],
      child: const Scaffold(
        body: _Handler(),
      ),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AppsDataBlocBloc, AppsDataBlocState>(
          listener: (context, state) {
            // TODO: implement listener
          },
        ),
      ],
      child: BlocBuilder<AppsDataBlocBloc, AppsDataBlocState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(child: CircularProgressIndicator()),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            loaded: (data) {
              return ListView.builder(
                itemCount: data.apps.length,
                itemBuilder: (_, index) {
                  final app = data.apps[index];
                  return ListTile(
                    leading: CircularImageHolder(
                      imageUrl: app.appIconUrl,
                    ),
                    title: Text(app.displayName),
                    subtitle: Text(app.platform),
                  );
                },
              );
            },
            noAppYet: (_) =>
                const Center(child: BillBoard(text: 'No Admob App Yet')),
            failed: (f) => Center(child: BillBoard(text: f.failures.msg)),
          );
        },
      ),
    );
  }
}
