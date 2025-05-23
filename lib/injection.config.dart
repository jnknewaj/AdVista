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

import 'application/adsense/payments_info/payments_info_bloc.dart' as _i106;
import 'application/advertising/advertising_bloc/advertising_bloc.dart'
    as _i319;
import 'application/advertising/interstitial/interstitial_bloc/interstial_bloc.dart'
    as _i347;
import 'application/advertising/native_ad/native_ad_bloc.dart' as _i558;
import 'application/auth/auth_check/auth_check_bloc.dart' as _i700;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i409;
import 'application/core/account/ac_opening_date_bloc/ac_opening_date_bloc.dart'
    as _i250;
import 'application/core/account/admob_account_bloc/admob_account_bloc.dart'
    as _i747;
import 'application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart' as _i761;
import 'application/metrics/apps_metrics/apps_data_bloc/apps_data_bloc_bloc.dart'
    as _i653;
import 'application/metrics/apps_metrics/apps_metrics_bloc/apps_metrics_bloc.dart'
    as _i648;
import 'application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart'
    as _i651;
import 'application/metrics/metrics_with_date/metrics_with_date_bloc.dart'
    as _i587;
import 'application/metrics/todays_metrics/todays_metrics_bloc.dart' as _i559;
import 'domain/adsense/i_payments_repository.dart' as _i424;
import 'domain/advertising/i_ad_repository.dart' as _i299;
import 'domain/apps_metrics/i_apps_data_repository.dart' as _i272;
import 'domain/auth/i_auth_facade.dart' as _i878;
import 'domain/auth/i_token_repository.dart' as _i357;
import 'domain/core/i_account_repository.dart' as _i566;
import 'domain/metrics/i_metrics_repository.dart' as _i839;
import 'infrastructure/adsense/adsense_service.dart' as _i191;
import 'infrastructure/adsense/payments_repository.dart' as _i920;
import 'infrastructure/advertising/ad_repository.dart' as _i968;
import 'infrastructure/apps_metrics/apps_data_repository.dart' as _i665;
import 'infrastructure/apps_metrics/apps_data_service.dart' as _i532;
import 'infrastructure/auth/google_auth_facade.dart' as _i168;
import 'infrastructure/auth/token_api_client.dart' as _i1066;
import 'infrastructure/auth/token_repository.dart' as _i969;
import 'infrastructure/core/account_service.dart' as _i823;
import 'infrastructure/core/admob_account_repository.dart' as _i876;
import 'infrastructure/core/base_service.dart' as _i621;
import 'infrastructure/core/date_service.dart' as _i439;
import 'infrastructure/core/google_injectable_modules.dart' as _i367;
import 'infrastructure/core/local_storage_service.dart' as _i384;
import 'infrastructure/core/third_party_injectable_moduels.dart' as _i480;
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
    gh.lazySingleton<_i439.DateService>(() => _i439.DateService());
    gh.lazySingleton<_i299.IAdRepository>(() => _i968.AdRepository());
    gh.factory<_i347.InterstialBloc>(
        () => _i347.InterstialBloc(gh<_i299.IAdRepository>()));
    gh.factory<_i558.NativeAdBloc>(
        () => _i558.NativeAdBloc(gh<_i299.IAdRepository>()));
    gh.factory<_i319.AdvertisingBloc>(
        () => _i319.AdvertisingBloc(gh<_i299.IAdRepository>()));
    gh.lazySingleton<_i1066.TokenApiClient>(
        () => _i1066.TokenApiClient(gh<_i519.Client>()));
    gh.lazySingleton<_i621.BaseService>(
        () => _i621.BaseService(gh<_i519.Client>()));
    gh.lazySingleton<_i384.LocalStorageService>(() => _i384.LocalStorageService(
          gh<_i558.FlutterSecureStorage>(),
          gh<_i1066.TokenApiClient>(),
        ));
    gh.lazySingleton<_i878.IAuthFacade>(() => _i168.GoogleAuthFacade(
          gh<_i116.GoogleSignIn>(),
          gh<_i1066.TokenApiClient>(),
        ));
    gh.lazySingleton<_i357.ITokenRepository>(
        () => _i969.TokenRepository(gh<_i384.LocalStorageService>()));
    gh.factory<_i409.SignInBloc>(() => _i409.SignInBloc(
          gh<_i878.IAuthFacade>(),
          gh<_i357.ITokenRepository>(),
        ));
    gh.lazySingleton<_i823.AccountService>(() => _i823.AccountService(
          gh<_i558.FlutterSecureStorage>(),
          gh<_i621.BaseService>(),
          gh<_i384.LocalStorageService>(),
          gh<_i519.Client>(),
        ));
    gh.lazySingleton<_i532.AppsDataService>(() => _i532.AppsDataService(
          gh<_i823.AccountService>(),
          gh<_i519.Client>(),
          gh<_i357.ITokenRepository>(),
        ));
    gh.lazySingleton<_i191.AdsenseService>(() => _i191.AdsenseService(
          gh<_i823.AccountService>(),
          gh<_i519.Client>(),
          gh<_i357.ITokenRepository>(),
        ));
    gh.lazySingleton<_i628.MetricsService>(() => _i628.MetricsService(
          gh<_i823.AccountService>(),
          gh<_i519.Client>(),
          gh<_i357.ITokenRepository>(),
        ));
    gh.lazySingleton<_i566.IAccountRepository>(
        () => _i876.AdmobAccountRepository(gh<_i823.AccountService>()));
    gh.lazySingleton<_i839.IMetricsRepository>(
        () => _i18.MetricsRepository(gh<_i628.MetricsService>()));
    gh.factory<_i587.MetricsWithDateBloc>(() => _i587.MetricsWithDateBloc(
          gh<_i839.IMetricsRepository>(),
          gh<_i439.DateService>(),
        ));
    gh.factory<_i747.AdmobAccountBloc>(() => _i747.AdmobAccountBloc(
          gh<_i566.IAccountRepository>(),
          gh<_i823.AccountService>(),
        ));
    gh.lazySingleton<_i272.IAppsDataRepository>(
        () => _i665.AppsDataRepository(gh<_i532.AppsDataService>()));
    gh.factory<_i250.AcOpeningDateBloc>(
        () => _i250.AcOpeningDateBloc(gh<_i566.IAccountRepository>()));
    gh.factory<_i559.TodaysMetricsBloc>(() => _i559.TodaysMetricsBloc(
          gh<_i839.IMetricsRepository>(),
          gh<_i439.DateService>(),
          gh<_i566.IAccountRepository>(),
        ));
    gh.factory<_i651.CountryWiseMetricsBloc>(() => _i651.CountryWiseMetricsBloc(
          gh<_i839.IMetricsRepository>(),
          gh<_i439.DateService>(),
          gh<_i566.IAccountRepository>(),
        ));
    gh.factory<_i761.AdUnitMetricsBloc>(() => _i761.AdUnitMetricsBloc(
          gh<_i839.IMetricsRepository>(),
          gh<_i439.DateService>(),
          gh<_i566.IAccountRepository>(),
        ));
    gh.factory<_i700.AuthCheckBloc>(() => _i700.AuthCheckBloc(
          gh<_i878.IAuthFacade>(),
          gh<_i566.IAccountRepository>(),
          gh<_i357.ITokenRepository>(),
        ));
    gh.lazySingleton<_i424.IPaymentsRepository>(
        () => _i920.PaymentsRepository(gh<_i191.AdsenseService>()));
    gh.factory<_i653.AppsDataBlocBloc>(
        () => _i653.AppsDataBlocBloc(gh<_i272.IAppsDataRepository>()));
    gh.factory<_i106.PaymentsInfoBloc>(
        () => _i106.PaymentsInfoBloc(gh<_i424.IPaymentsRepository>()));
    gh.factory<_i648.AppsMetricsBloc>(() => _i648.AppsMetricsBloc(
          gh<_i272.IAppsDataRepository>(),
          gh<_i439.DateService>(),
          gh<_i566.IAccountRepository>(),
        ));
    return this;
  }
}

class _$ThirdPartyInjectableModuels extends _i480.ThirdPartyInjectableModuels {}

class _$GoogleInjectableModule extends _i367.GoogleInjectableModule {}
