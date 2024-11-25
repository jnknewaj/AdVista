// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TokenFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() expired,
    required TResult Function(String? code, String? msg) serverError,
    required TResult Function(String? code, String? msg) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? expired,
    TResult? Function(String? code, String? msg)? serverError,
    TResult? Function(String? code, String? msg)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? expired,
    TResult Function(String? code, String? msg)? serverError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(Expired value) expired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Expired value)? expired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(Expired value)? expired,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenFailuresCopyWith<$Res> {
  factory $TokenFailuresCopyWith(
          TokenFailures value, $Res Function(TokenFailures) then) =
      _$TokenFailuresCopyWithImpl<$Res, TokenFailures>;
}

/// @nodoc
class _$TokenFailuresCopyWithImpl<$Res, $Val extends TokenFailures>
    implements $TokenFailuresCopyWith<$Res> {
  _$TokenFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenFailures
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$TokenFailuresCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenFailures
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotFoundImpl implements NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'TokenFailures.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() expired,
    required TResult Function(String? code, String? msg) serverError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? expired,
    TResult? Function(String? code, String? msg)? serverError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? expired,
    TResult Function(String? code, String? msg)? serverError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(Expired value) expired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Expired value)? expired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(Expired value)? expired,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements TokenFailures {
  const factory NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$ExpiredImplCopyWith<$Res> {
  factory _$$ExpiredImplCopyWith(
          _$ExpiredImpl value, $Res Function(_$ExpiredImpl) then) =
      __$$ExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpiredImplCopyWithImpl<$Res>
    extends _$TokenFailuresCopyWithImpl<$Res, _$ExpiredImpl>
    implements _$$ExpiredImplCopyWith<$Res> {
  __$$ExpiredImplCopyWithImpl(
      _$ExpiredImpl _value, $Res Function(_$ExpiredImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenFailures
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExpiredImpl implements Expired {
  const _$ExpiredImpl();

  @override
  String toString() {
    return 'TokenFailures.expired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() expired,
    required TResult Function(String? code, String? msg) serverError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return expired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? expired,
    TResult? Function(String? code, String? msg)? serverError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return expired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? expired,
    TResult Function(String? code, String? msg)? serverError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (expired != null) {
      return expired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(Expired value) expired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return expired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Expired value)? expired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return expired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(Expired value)? expired,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (expired != null) {
      return expired(this);
    }
    return orElse();
  }
}

abstract class Expired implements TokenFailures {
  const factory Expired() = _$ExpiredImpl;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? code, String? msg});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$TokenFailuresCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$ServerErrorImpl(
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

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl({this.code, this.msg});

  @override
  final String? code;
  @override
  final String? msg;

  @override
  String toString() {
    return 'TokenFailures.serverError(code: $code, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, msg);

  /// Create a copy of TokenFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() expired,
    required TResult Function(String? code, String? msg) serverError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return serverError(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? expired,
    TResult? Function(String? code, String? msg)? serverError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return serverError?.call(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? expired,
    TResult Function(String? code, String? msg)? serverError,
    TResult Function(String? code, String? msg)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(code, msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(Expired value) expired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Expired value)? expired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(Expired value)? expired,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements TokenFailures {
  const factory ServerError({final String? code, final String? msg}) =
      _$ServerErrorImpl;

  String? get code;
  String? get msg;

  /// Create a copy of TokenFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$TokenFailuresCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenFailures
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
    return 'TokenFailures.unknown(code: $code, msg: $msg)';
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

  /// Create a copy of TokenFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() expired,
    required TResult Function(String? code, String? msg) serverError,
    required TResult Function(String? code, String? msg) unknown,
  }) {
    return unknown(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? expired,
    TResult? Function(String? code, String? msg)? serverError,
    TResult? Function(String? code, String? msg)? unknown,
  }) {
    return unknown?.call(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? expired,
    TResult Function(String? code, String? msg)? serverError,
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
    required TResult Function(NotFound value) notFound,
    required TResult Function(Expired value) expired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Expired value)? expired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(Expired value)? expired,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements TokenFailures {
  const factory Unknown({final String? code, final String? msg}) =
      _$UnknownImpl;

  String? get code;
  String? get msg;

  /// Create a copy of TokenFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
