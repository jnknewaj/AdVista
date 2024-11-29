// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;

import 'application/auth/auth_check/auth_check_bloc.dart' as _i700;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i409;
import 'application/core/account/ac_opening_date_bloc/ac_opening_date_bloc.dart'
    as _i250;
import 'application/core/account/admob_account_bloc/admob_account_bloc.dart'
    as _i747;
import 'application/metrics/metrics_summary/metrics_summary_bloc.dart' as _i842;
import 'domain/auth/i_auth_facade.dart' as _i878;
import 'domain/auth/i_token_repository.dart' as _i357;
import 'domain/core/i_account_repository.dart' as _i566;
import 'domain/metrics/i_metrics_repository.dart' as _i839;
import 'infrastructure/auth/google_auth_facade.dart' as _i168;
import 'infrastructure/auth/token_api_client.dart' as _i1066;
import 'infrastructure/auth/token_repository.dart' as _i969;
import 'infrastructure/core/account_service.dart' as _i823;
import 'infrastructure/core/admob_account_repository.dart' as _i876;
import 'infrastructure/core/base_service.dart' as _i621;
import 'infrastructure/core/google_injectable_modules.dart' as _i367;
import 'infrastructure/core/third_party_injectable_moduels.dart' as _i480;
import 'infrastructure/core/token_storage_service.dart' as _i744;
import 'infrastructure/metrics/metrics_repository.dart' as _i18;
import 'infrastructure/metrics/metrics_service.dart' as _i628;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyInjectableModuels = _$ThirdPartyInjectableModuels();
    final googleInjectableModule = _$GoogleInjectableModule();
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => thirdPartyInjectableModuels.flutterSecureStorage);
    gh.lazySingleton<_i519.Client>(() => thirdPartyInjectableModuels.client);
    gh.lazySingleton<_i116.GoogleSignIn>(
        () => googleInjectableModule.googleSignIn);
    gh.lazySingleton<_i1066.TokenApiClient>(
        () => _i1066.TokenApiClient(gh<_i519.Client>()));
    gh.lazySingleton<_i621.BaseService>(
        () => _i621.BaseService(gh<_i519.Client>()));
    gh.lazySingleton<_i744.TokenStorageService>(() => _i744.TokenStorageService(
          gh<_i558.FlutterSecureStorage>(),
          gh<_i1066.TokenApiClient>(),
        ));
    gh.lazySingleton<_i878.IAuthFacade>(() => _i168.GoogleAuthFacade(
          gh<_i116.GoogleSignIn>(),
          gh<_i1066.TokenApiClient>(),
        ));
    gh.lazySingleton<_i823.AccountService>(() => _i823.AccountService(
          gh<_i558.FlutterSecureStorage>(),
          gh<_i621.BaseService>(),
          gh<_i744.TokenStorageService>(),
          gh<_i519.Client>(),
        ));
    gh.lazySingleton<_i566.IAccountRepository>(
        () => _i876.AdmobAccountRepository(gh<_i823.AccountService>()));
    gh.lazySingleton<_i628.MetricsService>(() => _i628.MetricsService(
          gh<_i621.BaseService>(),
          gh<_i823.AccountService>(),
        ));
    gh.lazySingleton<_i839.IMetricsRepository>(
        () => _i18.MetricsRepository(gh<_i628.MetricsService>()));
    gh.factory<_i842.MetricsSummaryBloc>(
        () => _i842.MetricsSummaryBloc(gh<_i839.IMetricsRepository>()));
    gh.lazySingleton<_i357.ITokenRepository>(
        () => _i969.TokenRepository(gh<_i744.TokenStorageService>()));
    gh.factory<_i747.AdmobAccountBloc>(() => _i747.AdmobAccountBloc(
          gh<_i566.IAccountRepository>(),
          gh<_i823.AccountService>(),
        ));
    gh.factory<_i250.AcOpeningDateBloc>(
        () => _i250.AcOpeningDateBloc(gh<_i566.IAccountRepository>()));
    gh.factory<_i700.AuthCheckBloc>(() => _i700.AuthCheckBloc(
          gh<_i878.IAuthFacade>(),
          gh<_i566.IAccountRepository>(),
          gh<_i357.ITokenRepository>(),
        ));
    gh.factory<_i409.SignInBloc>(() => _i409.SignInBloc(
          gh<_i878.IAuthFacade>(),
          gh<_i357.ITokenRepository>(),
        ));
    return this;
  }
}

class _$ThirdPartyInjectableModuels extends _i480.ThirdPartyInjectableModuels {}

class _$GoogleInjectableModule extends _i367.GoogleInjectableModule {}
