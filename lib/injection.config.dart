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
import 'domain/auth/i_auth_facade.dart' as _i878;
import 'domain/auth/i_token_repository.dart' as _i357;
import 'infrastructure/auth/google_auth_facade.dart' as _i168;
import 'infrastructure/auth/token_api_client.dart' as _i1066;
import 'infrastructure/auth/token_repository.dart' as _i969;
import 'infrastructure/core/google_injectable_modules.dart' as _i367;
import 'infrastructure/core/third_party_injectable_moduels.dart' as _i480;

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
    gh.lazySingleton<_i878.IAuthFacade>(() => _i168.GoogleAuthFacade(
          gh<_i116.GoogleSignIn>(),
          gh<_i1066.TokenApiClient>(),
        ));
    gh.lazySingleton<_i357.ITokenRepository>(() => _i969.TokenRepository(
          gh<_i558.FlutterSecureStorage>(),
          gh<_i1066.TokenApiClient>(),
        ));
    gh.factory<_i700.AuthCheckBloc>(
        () => _i700.AuthCheckBloc(gh<_i878.IAuthFacade>()));
    gh.factory<_i409.SignInBloc>(
        () => _i409.SignInBloc(gh<_i878.IAuthFacade>()));
    return this;
  }
}

class _$ThirdPartyInjectableModuels extends _i480.ThirdPartyInjectableModuels {}

class _$GoogleInjectableModule extends _i367.GoogleInjectableModule {}
