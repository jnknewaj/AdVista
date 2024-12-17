import 'package:advista/application/metrics/apps_metrics/apps_data_bloc/apps_data_bloc_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/core/widgets/circular_image_holder.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppsListPage extends StatelessWidget {
  const AppsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AppsDataBlocBloc>()
            ..add(const AppsDataBlocEvent.getAllAppsRequested()),
        ),
      ],
      child: const _Handler(),
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
      child: Scaffold(
        appBar: AppBar(title: Text(appName()), centerTitle: true),
        body: BlocBuilder<AppsDataBlocBloc, AppsDataBlocState>(
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
                      subtitle: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${app.platform} ',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ), // General style
                            ),
                            const TextSpan(
                              text: '|| ', // Separator
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextSpan(
                              text: app.appApprovalState, // App state text
                              style: TextStyle(
                                color:
                                    _mapAppStateToColor(app.appApprovalState),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showSnackbar(context,
                            'In Next Update - Apps Data Will be Available');
                      },
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
      ),
    );
  }
}

Color _mapAppStateToColor(String approvalState) {
  if (approvalState == 'ACTION_REQUIRED') {
    return Colors.red;
  } else if (approvalState == 'APPROVED') {
    return Colors.green;
  }
  return Colors.black;
}
