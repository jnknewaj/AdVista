// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;

import 'application/auth/auth_check/auth_check_bloc.dart' as _i700;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i409;
import 'domain/auth/i_auth_facade.dart' as _i878;
import 'infrastructure/auth/google_auth_facade.dart' as _i168;
import 'infrastructure/core/google_injectable_modules.dart' as _i367;

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
    final googleInjectableModule = _$GoogleInjectableModule();
    gh.lazySingleton<_i116.GoogleSignIn>(
        () => googleInjectableModule.googleSignIn);
    gh.lazySingleton<_i878.IAuthFacade>(
        () => _i168.GoogleAuthFacade(gh<_i116.GoogleSignIn>()));
    gh.factory<_i700.AuthCheckBloc>(
        () => _i700.AuthCheckBloc(gh<_i878.IAuthFacade>()));
    gh.factory<_i409.SignInBloc>(
        () => _i409.SignInBloc(gh<_i878.IAuthFacade>()));
    return this;
  }
}

class _$GoogleInjectableModule extends _i367.GoogleInjectableModule {}
