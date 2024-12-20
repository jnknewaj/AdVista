import 'package:advista/application/advertising/native_ad/native_ad_bloc.dart';
import 'package:advista/domain/apps_metrics/apps.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/core/widgets/circular_image_holder.dart';
import 'package:advista/presentation/core/widgets/native_ad_widget.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const app = Apps(
  name: '61861861',
  appId: '12292592929',
  platform: 'Android',
  displayName: 'Facebook',
  appApprovalState: 'Approved',
);

const app2 = Apps(
  name: '61862361',
  appId: '122921312929',
  platform: 'Android',
  displayName: 'Instagram',
  appApprovalState: 'Approved',
);

const app3 = Apps(
  name: '33862361',
  appId: '198921312929',
  platform: 'Android',
  displayName: 'World War 3',
  appApprovalState: 'Action Required',
);

class DemoAppsListPage extends StatelessWidget {
  const DemoAppsListPage({super.key});

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
      appBar: AppBar(
        title: const Text('AppVista Demo'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircularImageHolder(imageUrl: app.appIconUrl),
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
                      color: _mapAppStateToColor(app.appApprovalState),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              showSnackbar(
                  context, 'In Next Update - Apps Data Will be Available');
            },
          ),
          ListTile(
            leading: CircularImageHolder(imageUrl: app2.appIconUrl),
            title: Text(app2.displayName),
            subtitle: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${app2.platform} ',
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
                    text: app2.appApprovalState, // App state text
                    style: TextStyle(
                      color: _mapAppStateToColor(app.appApprovalState),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              showSnackbar(
                  context, 'In Next Update - Apps Data Will be Available');
            },
          ),
          ListTile(
            leading: CircularImageHolder(imageUrl: app2.appIconUrl),
            title: Text(app2.displayName),
            subtitle: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${app2.platform} ',
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
                    text: app2.appApprovalState, // App state text
                    style: TextStyle(
                      color: _mapAppStateToColor(app.appApprovalState),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              showSnackbar(
                  context, 'In Next Update - Apps Data Will be Available');
            },
          ),
          ListTile(
            leading: CircularImageHolder(imageUrl: app2.appIconUrl),
            title: Text(app2.displayName),
            subtitle: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${app2.platform} ',
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
                    text: app2.appApprovalState, // App state text
                    style: TextStyle(
                      color: _mapAppStateToColor(app.appApprovalState),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              showSnackbar(
                  context, 'In Next Update - Apps Data Will be Available');
            },
          ),
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
          ListTile(
            leading: CircularImageHolder(imageUrl: app3.appIconUrl),
            title: Text(app3.displayName),
            subtitle: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${app3.platform} ',
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
                    text: app3.appApprovalState, // App state text
                    style: TextStyle(
                      color: _mapAppStateToColor(app.appApprovalState),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              showSnackbar(
                  context, 'In Next Update - Apps Data Will be Available');
            },
          ),
        ],
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
