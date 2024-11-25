// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CancelledByUserImplCopyWith<$Res> {
  factory _$$CancelledByUserImplCopyWith(_$CancelledByUserImpl value,
          $Res Function(_$CancelledByUserImpl) then) =
      __$$CancelledByUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledByUserImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$CancelledByUserImpl>
    implements _$$CancelledByUserImplCopyWith<$Res> {
  __$$CancelledByUserImplCopyWithImpl(
      _$CancelledByUserImpl _value, $Res Function(_$CancelledByUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelledByUserImpl implements CancelledByUser {
  const _$CancelledByUserImpl();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledByUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUserImpl;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$ServerErrorImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthFailure.serverError(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return serverError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return serverError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError({final String? msg}) = _$ServerErrorImpl;

  String? get msg;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAccessTokenImplCopyWith<$Res> {
  factory _$$NoAccessTokenImplCopyWith(
          _$NoAccessTokenImpl value, $Res Function(_$NoAccessTokenImpl) then) =
      __$$NoAccessTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoAccessTokenImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NoAccessTokenImpl>
    implements _$$NoAccessTokenImplCopyWith<$Res> {
  __$$NoAccessTokenImplCopyWithImpl(
      _$NoAccessTokenImpl _value, $Res Function(_$NoAccessTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoAccessTokenImpl implements NoAccessToken {
  const _$NoAccessTokenImpl();

  @override
  String toString() {
    return 'AuthFailure.noAccessToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoAccessTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return noAccessToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return noAccessToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (noAccessToken != null) {
      return noAccessToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) {
    return noAccessToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return noAccessToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noAccessToken != null) {
      return noAccessToken(this);
    }
    return orElse();
  }
}

abstract class NoAccessToken implements AuthFailure {
  const factory NoAccessToken() = _$NoAccessTokenImpl;
}

/// @nodoc
abstract class _$$NoRefreshTokenImplCopyWith<$Res> {
  factory _$$NoRefreshTokenImplCopyWith(_$NoRefreshTokenImpl value,
          $Res Function(_$NoRefreshTokenImpl) then) =
      __$$NoRefreshTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoRefreshTokenImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NoRefreshTokenImpl>
    implements _$$NoRefreshTokenImplCopyWith<$Res> {
  __$$NoRefreshTokenImplCopyWithImpl(
      _$NoRefreshTokenImpl _value, $Res Function(_$NoRefreshTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoRefreshTokenImpl implements NoRefreshToken {
  const _$NoRefreshTokenImpl();

  @override
  String toString() {
    return 'AuthFailure.noRefreshToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoRefreshTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return noRefreshToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return noRefreshToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (noRefreshToken != null) {
      return noRefreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) {
    return noRefreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return noRefreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noRefreshToken != null) {
      return noRefreshToken(this);
    }
    return orElse();
  }
}

abstract class NoRefreshToken implements AuthFailure {
  const factory NoRefreshToken() = _$NoRefreshTokenImpl;
}

/// @nodoc
abstract class _$$NoServerAuthCodeImplCopyWith<$Res> {
  factory _$$NoServerAuthCodeImplCopyWith(_$NoServerAuthCodeImpl value,
          $Res Function(_$NoServerAuthCodeImpl) then) =
      __$$NoServerAuthCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoServerAuthCodeImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NoServerAuthCodeImpl>
    implements _$$NoServerAuthCodeImplCopyWith<$Res> {
  __$$NoServerAuthCodeImplCopyWithImpl(_$NoServerAuthCodeImpl _value,
      $Res Function(_$NoServerAuthCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoServerAuthCodeImpl implements NoServerAuthCode {
  const _$NoServerAuthCodeImpl();

  @override
  String toString() {
    return 'AuthFailure.noServerAuthCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoServerAuthCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return noServerAuthCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return noServerAuthCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (noServerAuthCode != null) {
      return noServerAuthCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) {
    return noServerAuthCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return noServerAuthCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noServerAuthCode != null) {
      return noServerAuthCode(this);
    }
    return orElse();
  }
}

abstract class NoServerAuthCode implements AuthFailure {
  const factory NoServerAuthCode() = _$NoServerAuthCodeImpl;
}

/// @nodoc
abstract class _$$TokenExchangeFailedImplCopyWith<$Res> {
  factory _$$TokenExchangeFailedImplCopyWith(_$TokenExchangeFailedImpl value,
          $Res Function(_$TokenExchangeFailedImpl) then) =
      __$$TokenExchangeFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TokenExchangeFailedImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$TokenExchangeFailedImpl>
    implements _$$TokenExchangeFailedImplCopyWith<$Res> {
  __$$TokenExchangeFailedImplCopyWithImpl(_$TokenExchangeFailedImpl _value,
      $Res Function(_$TokenExchangeFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TokenExchangeFailedImpl implements TokenExchangeFailed {
  const _$TokenExchangeFailedImpl();

  @override
  String toString() {
    return 'AuthFailure.tokenExchangeFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenExchangeFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return tokenExchangeFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return tokenExchangeFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (tokenExchangeFailed != null) {
      return tokenExchangeFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) {
    return tokenExchangeFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return tokenExchangeFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (tokenExchangeFailed != null) {
      return tokenExchangeFailed(this);
    }
    return orElse();
  }
}

abstract class TokenExchangeFailed implements AuthFailure {
  const factory TokenExchangeFailed() = _$TokenExchangeFailedImpl;
}

/// @nodoc
abstract class _$$FailedToStoreTokenImplCopyWith<$Res> {
  factory _$$FailedToStoreTokenImplCopyWith(_$FailedToStoreTokenImpl value,
          $Res Function(_$FailedToStoreTokenImpl) then) =
      __$$FailedToStoreTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToStoreTokenImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$FailedToStoreTokenImpl>
    implements _$$FailedToStoreTokenImplCopyWith<$Res> {
  __$$FailedToStoreTokenImplCopyWithImpl(_$FailedToStoreTokenImpl _value,
      $Res Function(_$FailedToStoreTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedToStoreTokenImpl implements FailedToStoreToken {
  const _$FailedToStoreTokenImpl();

  @override
  String toString() {
    return 'AuthFailure.failedToStoreToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedToStoreTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return failedToStoreToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return failedToStoreToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (failedToStoreToken != null) {
      return failedToStoreToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) {
    return failedToStoreToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return failedToStoreToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (failedToStoreToken != null) {
      return failedToStoreToken(this);
    }
    return orElse();
  }
}

abstract class FailedToStoreToken implements AuthFailure {
  const factory FailedToStoreToken() = _$FailedToStoreTokenImpl;
}

/// @nodoc
abstract class _$$NotSignedInImplCopyWith<$Res> {
  factory _$$NotSignedInImplCopyWith(
          _$NotSignedInImpl value, $Res Function(_$NotSignedInImpl) then) =
      __$$NotSignedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotSignedInImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NotSignedInImpl>
    implements _$$NotSignedInImplCopyWith<$Res> {
  __$$NotSignedInImplCopyWithImpl(
      _$NotSignedInImpl _value, $Res Function(_$NotSignedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotSignedInImpl implements NotSignedIn {
  const _$NotSignedInImpl();

  @override
  String toString() {
    return 'AuthFailure.notSignedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotSignedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return notSignedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return notSignedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (notSignedIn != null) {
      return notSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) {
    return notSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return notSignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (notSignedIn != null) {
      return notSignedIn(this);
    }
    return orElse();
  }
}

abstract class NotSignedIn implements AuthFailure {
  const factory NotSignedIn() = _$NotSignedInImpl;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkErrorImpl implements NetworkError {
  const _$NetworkErrorImpl();

  @override
  String toString() {
    return 'AuthFailure.networkError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError implements AuthFailure {
  const factory NetworkError() = _$NetworkErrorImpl;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? code, String? msg});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$UnknownImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownImpl implements Unknown {
  const _$UnknownImpl({this.code, this.msg});

  @override
  final String? code;
  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthFailure.unknown(code: $code, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, msg);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(String? msg) serverError,
    required TResult Function() noAccessToken,
    required TResult Function() noRefreshToken,
    required TResult Function() noServerAuthCode,
    required TResult Function() tokenExchangeFailed,
    required TResult Function() failedToStoreToken,
    required TResult Function() notSignedIn,
    required TResult Function() networkError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return unknown(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function(String? msg)? serverError,
    TResult? Function()? noAccessToken,
    TResult? Function()? noRefreshToken,
    TResult? Function()? noServerAuthCode,
    TResult? Function()? tokenExchangeFailed,
    TResult? Function()? failedToStoreToken,
    TResult? Function()? notSignedIn,
    TResult? Function()? networkError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return unknown?.call(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(String? msg)? serverError,
    TResult Function()? noAccessToken,
    TResult Function()? noRefreshToken,
    TResult Function()? noServerAuthCode,
    TResult Function()? tokenExchangeFailed,
    TResult Function()? failedToStoreToken,
    TResult Function()? notSignedIn,
    TResult Function()? networkError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(code, msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoAccessToken value) noAccessToken,
    required TResult Function(NoRefreshToken value) noRefreshToken,
    required TResult Function(NoServerAuthCode value) noServerAuthCode,
    required TResult Function(TokenExchangeFailed value) tokenExchangeFailed,
    required TResult Function(FailedToStoreToken value) failedToStoreToken,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoAccessToken value)? noAccessToken,
    TResult? Function(NoRefreshToken value)? noRefreshToken,
    TResult? Function(NoServerAuthCode value)? noServerAuthCode,
    TResult? Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult? Function(FailedToStoreToken value)? failedToStoreToken,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(NoAccessToken value)? noAccessToken,
    TResult Function(NoRefreshToken value)? noRefreshToken,
    TResult Function(NoServerAuthCode value)? noServerAuthCode,
    TResult Function(TokenExchangeFailed value)? tokenExchangeFailed,
    TResult Function(FailedToStoreToken value)? failedToStoreToken,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements AuthFailure {
  const factory Unknown({final String? code, final String? msg}) =
      _$UnknownImpl;

  String? get code;
  String? get msg;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
