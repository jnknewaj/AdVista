// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metrics_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MetricsFailures {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetricsFailuresCopyWith<MetricsFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricsFailuresCopyWith<$Res> {
  factory $MetricsFailuresCopyWith(
          MetricsFailures value, $Res Function(MetricsFailures) then) =
      _$MetricsFailuresCopyWithImpl<$Res, MetricsFailures>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$MetricsFailuresCopyWithImpl<$Res, $Val extends MetricsFailures>
    implements $MetricsFailuresCopyWith<$Res> {
  _$MetricsFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res>
    implements $MetricsFailuresCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$MetricsFailuresCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsFailures
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

class _$NetworkFailureImpl implements _NetworkFailure {
  const _$NetworkFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'MetricsFailures.networkFailure(msg: $msg)';
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

  /// Create a copy of MetricsFailures
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
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) unknown,
  }) {
    return networkFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? unknown,
  }) {
    return networkFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? unknown,
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
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_Unknown value) unknown,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure implements MetricsFailures {
  const factory _NetworkFailure(final String msg) = _$NetworkFailureImpl;

  @override
  String get msg;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeOutImplCopyWith<$Res>
    implements $MetricsFailuresCopyWith<$Res> {
  factory _$$TimeOutImplCopyWith(
          _$TimeOutImpl value, $Res Function(_$TimeOutImpl) then) =
      __$$TimeOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$TimeOutImplCopyWithImpl<$Res>
    extends _$MetricsFailuresCopyWithImpl<$Res, _$TimeOutImpl>
    implements _$$TimeOutImplCopyWith<$Res> {
  __$$TimeOutImplCopyWithImpl(
      _$TimeOutImpl _value, $Res Function(_$TimeOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsFailures
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

class _$TimeOutImpl implements _TimeOut {
  const _$TimeOutImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'MetricsFailures.timeout(msg: $msg)';
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

  /// Create a copy of MetricsFailures
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
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) unknown,
  }) {
    return timeout(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? unknown,
  }) {
    return timeout?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_Unknown value) unknown,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _TimeOut implements MetricsFailures {
  const factory _TimeOut(final String msg) = _$TimeOutImpl;

  @override
  String get msg;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeOutImplCopyWith<_$TimeOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsingFailureImplCopyWith<$Res>
    implements $MetricsFailuresCopyWith<$Res> {
  factory _$$ParsingFailureImplCopyWith(_$ParsingFailureImpl value,
          $Res Function(_$ParsingFailureImpl) then) =
      __$$ParsingFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ParsingFailureImplCopyWithImpl<$Res>
    extends _$MetricsFailuresCopyWithImpl<$Res, _$ParsingFailureImpl>
    implements _$$ParsingFailureImplCopyWith<$Res> {
  __$$ParsingFailureImplCopyWithImpl(
      _$ParsingFailureImpl _value, $Res Function(_$ParsingFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsFailures
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

class _$ParsingFailureImpl implements _ParsingFailure {
  const _$ParsingFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'MetricsFailures.parsingFailure(msg: $msg)';
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

  /// Create a copy of MetricsFailures
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
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) unknown,
  }) {
    return parsingFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? unknown,
  }) {
    return parsingFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? unknown,
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
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_Unknown value) unknown,
  }) {
    return parsingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return parsingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (parsingFailure != null) {
      return parsingFailure(this);
    }
    return orElse();
  }
}

abstract class _ParsingFailure implements MetricsFailures {
  const factory _ParsingFailure(final String msg) = _$ParsingFailureImpl;

  @override
  String get msg;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsingFailureImplCopyWith<_$ParsingFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenNotFoundImplCopyWith<$Res>
    implements $MetricsFailuresCopyWith<$Res> {
  factory _$$TokenNotFoundImplCopyWith(
          _$TokenNotFoundImpl value, $Res Function(_$TokenNotFoundImpl) then) =
      __$$TokenNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$TokenNotFoundImplCopyWithImpl<$Res>
    extends _$MetricsFailuresCopyWithImpl<$Res, _$TokenNotFoundImpl>
    implements _$$TokenNotFoundImplCopyWith<$Res> {
  __$$TokenNotFoundImplCopyWithImpl(
      _$TokenNotFoundImpl _value, $Res Function(_$TokenNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsFailures
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

class _$TokenNotFoundImpl implements _TokenNotFound {
  const _$TokenNotFoundImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'MetricsFailures.tokenNotFound(msg: $msg)';
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

  /// Create a copy of MetricsFailures
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
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) unknown,
  }) {
    return tokenNotFound(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? unknown,
  }) {
    return tokenNotFound?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? unknown,
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
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_Unknown value) unknown,
  }) {
    return tokenNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return tokenNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (tokenNotFound != null) {
      return tokenNotFound(this);
    }
    return orElse();
  }
}

abstract class _TokenNotFound implements MetricsFailures {
  const factory _TokenNotFound(final String msg) = _$TokenNotFoundImpl;

  @override
  String get msg;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenNotFoundImplCopyWith<_$TokenNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $MetricsFailuresCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$MetricsFailuresCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ServerFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'MetricsFailures.serverFailure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of MetricsFailures
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
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) unknown,
  }) {
    return serverFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? unknown,
  }) {
    return serverFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_Unknown value) unknown,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements MetricsFailures {
  const factory _ServerFailure(final String msg) = _$ServerFailureImpl;

  @override
  String get msg;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdNotFoundImplCopyWith<$Res>
    implements $MetricsFailuresCopyWith<$Res> {
  factory _$$IdNotFoundImplCopyWith(
          _$IdNotFoundImpl value, $Res Function(_$IdNotFoundImpl) then) =
      __$$IdNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$IdNotFoundImplCopyWithImpl<$Res>
    extends _$MetricsFailuresCopyWithImpl<$Res, _$IdNotFoundImpl>
    implements _$$IdNotFoundImplCopyWith<$Res> {
  __$$IdNotFoundImplCopyWithImpl(
      _$IdNotFoundImpl _value, $Res Function(_$IdNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsFailures
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

class _$IdNotFoundImpl implements _IdNotFound {
  const _$IdNotFoundImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'MetricsFailures.idNotFound(msg: $msg)';
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

  /// Create a copy of MetricsFailures
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
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) unknown,
  }) {
    return idNotFound(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? unknown,
  }) {
    return idNotFound?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? unknown,
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
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_Unknown value) unknown,
  }) {
    return idNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return idNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (idNotFound != null) {
      return idNotFound(this);
    }
    return orElse();
  }
}

abstract class _IdNotFound implements MetricsFailures {
  const factory _IdNotFound(final String msg) = _$IdNotFoundImpl;

  @override
  String get msg;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdNotFoundImplCopyWith<_$IdNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res>
    implements $MetricsFailuresCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$MetricsFailuresCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$UnknownImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'MetricsFailures.unknown(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of MetricsFailures
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
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) unknown,
  }) {
    return unknown(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? unknown,
  }) {
    return unknown?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements MetricsFailures {
  const factory _Unknown(final String msg) = _$UnknownImpl;

  @override
  String get msg;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
