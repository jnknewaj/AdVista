// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeOut,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg, String code) serverFailure,
    required TResult Function(int code, String message) httpFailure,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeOut,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg, String code)? serverFailure,
    TResult? Function(int code, String message)? httpFailure,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeOut,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg, String code)? serverFailure,
    TResult Function(int code, String message)? httpFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(TokenNotFound value) tokenNotFound,
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(HTTPFailure value) httpFailure,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeOut value)? timeOut,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(TokenNotFound value)? tokenNotFound,
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(HTTPFailure value)? httpFailure,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(TokenNotFound value)? tokenNotFound,
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(HTTPFailure value)? httpFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountFailuresCopyWith<$Res> {
  factory $AccountFailuresCopyWith(
          AccountFailures value, $Res Function(AccountFailures) then) =
      _$AccountFailuresCopyWithImpl<$Res, AccountFailures>;
}

/// @nodoc
class _$AccountFailuresCopyWithImpl<$Res, $Val extends AccountFailures>
    implements $AccountFailuresCopyWith<$Res> {
  _$AccountFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$AccountFailuresCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$NetworkFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailureImpl
    with DiagnosticableTreeMixin
    implements NetworkFailure {
  const _$NetworkFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountFailures.networkFailure(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountFailures.networkFailure'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeOut,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg, String code) serverFailure,
    required TResult Function(int code, String message) httpFailure,
    required TResult Function(String message) unknown,
  }) {
    return networkFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeOut,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg, String code)? serverFailure,
    TResult? Function(int code, String message)? httpFailure,
    TResult? Function(String message)? unknown,
  }) {
    return networkFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeOut,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg, String code)? serverFailure,
    TResult Function(int code, String message)? httpFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(TokenNotFound value) tokenNotFound,
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(HTTPFailure value) httpFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeOut value)? timeOut,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(TokenNotFound value)? tokenNotFound,
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(HTTPFailure value)? httpFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(TokenNotFound value)? tokenNotFound,
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(HTTPFailure value)? httpFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements AccountFailures {
  const factory NetworkFailure(final String msg) = _$NetworkFailureImpl;

  String get msg;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeOutImplCopyWith<$Res> {
  factory _$$TimeOutImplCopyWith(
          _$TimeOutImpl value, $Res Function(_$TimeOutImpl) then) =
      __$$TimeOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$TimeOutImplCopyWithImpl<$Res>
    extends _$AccountFailuresCopyWithImpl<$Res, _$TimeOutImpl>
    implements _$$TimeOutImplCopyWith<$Res> {
  __$$TimeOutImplCopyWithImpl(
      _$TimeOutImpl _value, $Res Function(_$TimeOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$TimeOutImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeOutImpl with DiagnosticableTreeMixin implements TimeOut {
  const _$TimeOutImpl(this.msg);

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountFailures.timeOut(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountFailures.timeOut'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeOutImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeOutImplCopyWith<_$TimeOutImpl> get copyWith =>
      __$$TimeOutImplCopyWithImpl<_$TimeOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeOut,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg, String code) serverFailure,
    required TResult Function(int code, String message) httpFailure,
    required TResult Function(String message) unknown,
  }) {
    return timeOut(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeOut,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg, String code)? serverFailure,
    TResult? Function(int code, String message)? httpFailure,
    TResult? Function(String message)? unknown,
  }) {
    return timeOut?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeOut,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg, String code)? serverFailure,
    TResult Function(int code, String message)? httpFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(TokenNotFound value) tokenNotFound,
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(HTTPFailure value) httpFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeOut value)? timeOut,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(TokenNotFound value)? tokenNotFound,
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(HTTPFailure value)? httpFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(TokenNotFound value)? tokenNotFound,
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(HTTPFailure value)? httpFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class TimeOut implements AccountFailures {
  const factory TimeOut(final String msg) = _$TimeOutImpl;

  String get msg;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeOutImplCopyWith<_$TimeOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsingFailureImplCopyWith<$Res> {
  factory _$$ParsingFailureImplCopyWith(_$ParsingFailureImpl value,
          $Res Function(_$ParsingFailureImpl) then) =
      __$$ParsingFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ParsingFailureImplCopyWithImpl<$Res>
    extends _$AccountFailuresCopyWithImpl<$Res, _$ParsingFailureImpl>
    implements _$$ParsingFailureImplCopyWith<$Res> {
  __$$ParsingFailureImplCopyWithImpl(
      _$ParsingFailureImpl _value, $Res Function(_$ParsingFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ParsingFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParsingFailureImpl
    with DiagnosticableTreeMixin
    implements ParsingFailure {
  const _$ParsingFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountFailures.parsingFailure(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountFailures.parsingFailure'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsingFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsingFailureImplCopyWith<_$ParsingFailureImpl> get copyWith =>
      __$$ParsingFailureImplCopyWithImpl<_$ParsingFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeOut,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg, String code) serverFailure,
    required TResult Function(int code, String message) httpFailure,
    required TResult Function(String message) unknown,
  }) {
    return parsingFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeOut,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg, String code)? serverFailure,
    TResult? Function(int code, String message)? httpFailure,
    TResult? Function(String message)? unknown,
  }) {
    return parsingFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeOut,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg, String code)? serverFailure,
    TResult Function(int code, String message)? httpFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (parsingFailure != null) {
      return parsingFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(TokenNotFound value) tokenNotFound,
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(HTTPFailure value) httpFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return parsingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeOut value)? timeOut,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(TokenNotFound value)? tokenNotFound,
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(HTTPFailure value)? httpFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return parsingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(TokenNotFound value)? tokenNotFound,
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(HTTPFailure value)? httpFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (parsingFailure != null) {
      return parsingFailure(this);
    }
    return orElse();
  }
}

abstract class ParsingFailure implements AccountFailures {
  const factory ParsingFailure(final String msg) = _$ParsingFailureImpl;

  String get msg;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsingFailureImplCopyWith<_$ParsingFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenNotFoundImplCopyWith<$Res> {
  factory _$$TokenNotFoundImplCopyWith(
          _$TokenNotFoundImpl value, $Res Function(_$TokenNotFoundImpl) then) =
      __$$TokenNotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$TokenNotFoundImplCopyWithImpl<$Res>
    extends _$AccountFailuresCopyWithImpl<$Res, _$TokenNotFoundImpl>
    implements _$$TokenNotFoundImplCopyWith<$Res> {
  __$$TokenNotFoundImplCopyWithImpl(
      _$TokenNotFoundImpl _value, $Res Function(_$TokenNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$TokenNotFoundImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TokenNotFoundImpl
    with DiagnosticableTreeMixin
    implements TokenNotFound {
  const _$TokenNotFoundImpl(this.msg);

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountFailures.tokenNotFound(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountFailures.tokenNotFound'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenNotFoundImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenNotFoundImplCopyWith<_$TokenNotFoundImpl> get copyWith =>
      __$$TokenNotFoundImplCopyWithImpl<_$TokenNotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeOut,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg, String code) serverFailure,
    required TResult Function(int code, String message) httpFailure,
    required TResult Function(String message) unknown,
  }) {
    return tokenNotFound(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeOut,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg, String code)? serverFailure,
    TResult? Function(int code, String message)? httpFailure,
    TResult? Function(String message)? unknown,
  }) {
    return tokenNotFound?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeOut,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg, String code)? serverFailure,
    TResult Function(int code, String message)? httpFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (tokenNotFound != null) {
      return tokenNotFound(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(TokenNotFound value) tokenNotFound,
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(HTTPFailure value) httpFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return tokenNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeOut value)? timeOut,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(TokenNotFound value)? tokenNotFound,
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(HTTPFailure value)? httpFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return tokenNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(TokenNotFound value)? tokenNotFound,
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(HTTPFailure value)? httpFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (tokenNotFound != null) {
      return tokenNotFound(this);
    }
    return orElse();
  }
}

abstract class TokenNotFound implements AccountFailures {
  const factory TokenNotFound(final String msg) = _$TokenNotFoundImpl;

  String get msg;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenNotFoundImplCopyWith<_$TokenNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdNotFoundImplCopyWith<$Res> {
  factory _$$IdNotFoundImplCopyWith(
          _$IdNotFoundImpl value, $Res Function(_$IdNotFoundImpl) then) =
      __$$IdNotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$IdNotFoundImplCopyWithImpl<$Res>
    extends _$AccountFailuresCopyWithImpl<$Res, _$IdNotFoundImpl>
    implements _$$IdNotFoundImplCopyWith<$Res> {
  __$$IdNotFoundImplCopyWithImpl(
      _$IdNotFoundImpl _value, $Res Function(_$IdNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$IdNotFoundImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IdNotFoundImpl with DiagnosticableTreeMixin implements IdNotFound {
  const _$IdNotFoundImpl(this.msg);

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountFailures.idNotFound(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountFailures.idNotFound'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdNotFoundImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdNotFoundImplCopyWith<_$IdNotFoundImpl> get copyWith =>
      __$$IdNotFoundImplCopyWithImpl<_$IdNotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeOut,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg, String code) serverFailure,
    required TResult Function(int code, String message) httpFailure,
    required TResult Function(String message) unknown,
  }) {
    return idNotFound(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeOut,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg, String code)? serverFailure,
    TResult? Function(int code, String message)? httpFailure,
    TResult? Function(String message)? unknown,
  }) {
    return idNotFound?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeOut,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg, String code)? serverFailure,
    TResult Function(int code, String message)? httpFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (idNotFound != null) {
      return idNotFound(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(TokenNotFound value) tokenNotFound,
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(HTTPFailure value) httpFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return idNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeOut value)? timeOut,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(TokenNotFound value)? tokenNotFound,
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(HTTPFailure value)? httpFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return idNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(TokenNotFound value)? tokenNotFound,
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(HTTPFailure value)? httpFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (idNotFound != null) {
      return idNotFound(this);
    }
    return orElse();
  }
}

abstract class IdNotFound implements AccountFailures {
  const factory IdNotFound(final String msg) = _$IdNotFoundImpl;

  String get msg;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdNotFoundImplCopyWith<_$IdNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg, String code});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$AccountFailuresCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? code = null,
  }) {
    return _then(_$ServerFailureImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl
    with DiagnosticableTreeMixin
    implements ServerFailure {
  const _$ServerFailureImpl({required this.msg, required this.code});

  @override
  final String msg;
  @override
  final String code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountFailures.serverFailure(msg: $msg, code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountFailures.serverFailure'))
      ..add(DiagnosticsProperty('msg', msg))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, code);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeOut,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg, String code) serverFailure,
    required TResult Function(int code, String message) httpFailure,
    required TResult Function(String message) unknown,
  }) {
    return serverFailure(msg, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeOut,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg, String code)? serverFailure,
    TResult? Function(int code, String message)? httpFailure,
    TResult? Function(String message)? unknown,
  }) {
    return serverFailure?.call(msg, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeOut,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg, String code)? serverFailure,
    TResult Function(int code, String message)? httpFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(msg, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(TokenNotFound value) tokenNotFound,
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(HTTPFailure value) httpFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeOut value)? timeOut,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(TokenNotFound value)? tokenNotFound,
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(HTTPFailure value)? httpFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(TokenNotFound value)? tokenNotFound,
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(HTTPFailure value)? httpFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements AccountFailures {
  const factory ServerFailure(
      {required final String msg,
      required final String code}) = _$ServerFailureImpl;

  String get msg;
  String get code;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HTTPFailureImplCopyWith<$Res> {
  factory _$$HTTPFailureImplCopyWith(
          _$HTTPFailureImpl value, $Res Function(_$HTTPFailureImpl) then) =
      __$$HTTPFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class __$$HTTPFailureImplCopyWithImpl<$Res>
    extends _$AccountFailuresCopyWithImpl<$Res, _$HTTPFailureImpl>
    implements _$$HTTPFailureImplCopyWith<$Res> {
  __$$HTTPFailureImplCopyWithImpl(
      _$HTTPFailureImpl _value, $Res Function(_$HTTPFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$HTTPFailureImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HTTPFailureImpl with DiagnosticableTreeMixin implements HTTPFailure {
  const _$HTTPFailureImpl(this.code, this.message);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountFailures.httpFailure(code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountFailures.httpFailure'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HTTPFailureImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HTTPFailureImplCopyWith<_$HTTPFailureImpl> get copyWith =>
      __$$HTTPFailureImplCopyWithImpl<_$HTTPFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeOut,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg, String code) serverFailure,
    required TResult Function(int code, String message) httpFailure,
    required TResult Function(String message) unknown,
  }) {
    return httpFailure(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeOut,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg, String code)? serverFailure,
    TResult? Function(int code, String message)? httpFailure,
    TResult? Function(String message)? unknown,
  }) {
    return httpFailure?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeOut,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg, String code)? serverFailure,
    TResult Function(int code, String message)? httpFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(TokenNotFound value) tokenNotFound,
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(HTTPFailure value) httpFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return httpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeOut value)? timeOut,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(TokenNotFound value)? tokenNotFound,
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(HTTPFailure value)? httpFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return httpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(TokenNotFound value)? tokenNotFound,
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(HTTPFailure value)? httpFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure(this);
    }
    return orElse();
  }
}

abstract class HTTPFailure implements AccountFailures {
  const factory HTTPFailure(final int code, final String message) =
      _$HTTPFailureImpl;

  int get code;
  String get message;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HTTPFailureImplCopyWith<_$HTTPFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AccountFailuresCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownImpl with DiagnosticableTreeMixin implements Unknown {
  const _$UnknownImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountFailures.unknown(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountFailures.unknown'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeOut,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg, String code) serverFailure,
    required TResult Function(int code, String message) httpFailure,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeOut,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg, String code)? serverFailure,
    TResult? Function(int code, String message)? httpFailure,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeOut,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg, String code)? serverFailure,
    TResult Function(int code, String message)? httpFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(TokenNotFound value) tokenNotFound,
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(HTTPFailure value) httpFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeOut value)? timeOut,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(TokenNotFound value)? tokenNotFound,
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(HTTPFailure value)? httpFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(TokenNotFound value)? tokenNotFound,
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(HTTPFailure value)? httpFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements AccountFailures {
  const factory Unknown(final String message) = _$UnknownImpl;

  String get message;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
