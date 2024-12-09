import 'package:advista/application/advertising/native_ad/native_ad_bloc.dart';
import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/main.dart';
import 'package:advista/presentation/core/widgets/native_ad_widget.dart';
import 'package:advista/presentation/core/widgets/simple_button.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotAdmobUserPage extends StatelessWidget {
  const NotAdmobUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCheckBloc>(),
        ),
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
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCheckBloc, AuthCheckState>(
          listener: (context, state) {
            state.maybeMap(
              unAuthenticated: (_) {
                navigateAndRemoveUntil(context, const AuthGate());
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AdMob Account Required"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const Icon(
                Icons.error_outline,
                size: 80,
                color: Colors.red,
              ),
              const SizedBox(height: 24),
              Text(
                "AdMob Account Required",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                "The currently signed-in email does not have an AdMob account associated with it. To use this app, you need to link an AdMob account.",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "Go to admob console to create your admob account.",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              BlocBuilder<NativeAdBloc, NativeAdState>(
                builder: (context, state) {
                  return state.maybeMap(
                    loaded: (s) {
                      return NativeAdWidget(
                        nativeAd: s.nativeAd,
                        size: NativeAdSize.large,
                      );
                    },
                    orElse: () => const SizedBox(),
                  );
                },
              ),
              const SizedBox(height: 16),
              SimpleButton(
                onPressed: () {
                  context
                      .read<AuthCheckBloc>()
                      .add(const AuthCheckEvent.signOutPressed());
                },
                text: 'Sign Out',
                fill: true,
                primaryColor: Theme.of(context).primaryColor,
                secondaryColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
