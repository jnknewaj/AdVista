import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
import 'package:advista/application/core/account/admob_account_bloc/admob_account_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/auth/login_page.dart';
import 'package:advista/presentation/core/pages/splash_screen.dart';
import 'package:advista/presentation/home/home_page.dart';
import 'package:advista/presentation/not_admob_user/pages/not_admob_user_page.dart';
import 'package:advista/utils/ad_strings.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  HydratedBloc.storage = storage;
  await storage.clear();
  configureDependencies();
  final gmaInstance = MobileAds.instance;
  await gmaInstance.initialize();
  gmaInstance.updateRequestConfiguration(
    RequestConfiguration(
      testDeviceIds: [
        //AdString.testDevice1,
      ],
    ),
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
        ),
        primaryColor: const Color(0xff00B4CC),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
                const Color(0xff00B4CC)), // Primary background color
            foregroundColor:
                WidgetStateProperty.all<Color>(Colors.white), // Text color
            padding: WidgetStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(
                  vertical: 12, horizontal: 20), // Padding
            ),
            textStyle: WidgetStateProperty.all<TextStyle>(
              const TextStyle(fontSize: 16), // Text style
            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xff00B4CC),
          unselectedItemColor: Color(0xff00B4CC),
          elevation: 10,
        ),
      ),
      home: const AuthGate(),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AdmobAccountBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<AuthCheckBloc>()..add(const AuthCheckEvent.started()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AdmobAccountBloc, AdmobAccountState>(
            listener: (context, state) {
              state.map(
                initial: (s) {},
                loading: (s) {
                  showSnackbar(context, 'Please wait...');
                },
                loaded: (s) {
                  navigateAndRemoveUntil(context, const HomePage());
                },
                failed: (s) {
                  //navigateAndRemoveUntil(context, const NotAdmobUserPage());
                  navigateAndRemoveUntil(context, const HomePage());
                },
                idInfoFound: (ss) {
                  navigateAndRemoveUntil(context, const HomePage());
                },
                idInfoNotFound: (s) {
                  context
                      .read<AdmobAccountBloc>()
                      .add(const AdmobAccountEvent.accountInfoRequested());
                },
              );
            },
          ),
          BlocListener<AuthCheckBloc, AuthCheckState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                authenticated: (e) {
                  context
                      .read<AdmobAccountBloc>()
                      .add(const AdmobAccountEvent.checkedAccountId());
                },
                unAuthenticated: (_) {
                  navigateAndRemoveUntil(context, const LoginPage());
                },
              );
            },
          ),
        ],
        child: BlocBuilder<AuthCheckBloc, AuthCheckState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const SplashScreen(),
              authenticated: (_) => const SplashScreen(),
              unAuthenticated: (_) => const LoginPage(),
            );
          },
        ),
      ),
    );
  }
}
