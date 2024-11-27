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
  String? get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) serviceError,
    required TResult Function(String? msg) idNotFoundError,
    required TResult Function(String? msg, String? code) unknown,
    required TResult Function(String? msg, int? code) httpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? serviceError,
    TResult? Function(String? msg)? idNotFoundError,
    TResult? Function(String? msg, String? code)? unknown,
    TResult? Function(String? msg, int? code)? httpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? serviceError,
    TResult Function(String? msg)? idNotFoundError,
    TResult Function(String? msg, String? code)? unknown,
    TResult Function(String? msg, int? code)? httpError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceError value) serviceError,
    required TResult Function(IdNotFoundError value) idNotFoundError,
    required TResult Function(Unknown value) unknown,
    required TResult Function(HttpError value) httpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceError value)? serviceError,
    TResult? Function(IdNotFoundError value)? idNotFoundError,
    TResult? Function(Unknown value)? unknown,
    TResult? Function(HttpError value)? httpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceError value)? serviceError,
    TResult Function(IdNotFoundError value)? idNotFoundError,
    TResult Function(Unknown value)? unknown,
    TResult Function(HttpError value)? httpError,
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
  $Res call({String? msg});
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
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceErrorImplCopyWith<$Res>
    implements $MetricsFailuresCopyWith<$Res> {
  factory _$$ServiceErrorImplCopyWith(
          _$ServiceErrorImpl value, $Res Function(_$ServiceErrorImpl) then) =
      __$$ServiceErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$ServiceErrorImplCopyWithImpl<$Res>
    extends _$MetricsFailuresCopyWithImpl<$Res, _$ServiceErrorImpl>
    implements _$$ServiceErrorImplCopyWith<$Res> {
  __$$ServiceErrorImplCopyWithImpl(
      _$ServiceErrorImpl _value, $Res Function(_$ServiceErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$ServiceErrorImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServiceErrorImpl implements ServiceError {
  const _$ServiceErrorImpl({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'MetricsFailures.serviceError(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceErrorImplCopyWith<_$ServiceErrorImpl> get copyWith =>
      __$$ServiceErrorImplCopyWithImpl<_$ServiceErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) serviceError,
    required TResult Function(String? msg) idNotFoundError,
    required TResult Function(String? msg, String? code) unknown,
    required TResult Function(String? msg, int? code) httpError,
  }) {
    return serviceError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? serviceError,
    TResult? Function(String? msg)? idNotFoundError,
    TResult? Function(String? msg, String? code)? unknown,
    TResult? Function(String? msg, int? code)? httpError,
  }) {
    return serviceError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? serviceError,
    TResult Function(String? msg)? idNotFoundError,
    TResult Function(String? msg, String? code)? unknown,
    TResult Function(String? msg, int? code)? httpError,
    required TResult orElse(),
  }) {
    if (serviceError != null) {
      return serviceError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceError value) serviceError,
    required TResult Function(IdNotFoundError value) idNotFoundError,
    required TResult Function(Unknown value) unknown,
    required TResult Function(HttpError value) httpError,
  }) {
    return serviceError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceError value)? serviceError,
    TResult? Function(IdNotFoundError value)? idNotFoundError,
    TResult? Function(Unknown value)? unknown,
    TResult? Function(HttpError value)? httpError,
  }) {
    return serviceError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceError value)? serviceError,
    TResult Function(IdNotFoundError value)? idNotFoundError,
    TResult Function(Unknown value)? unknown,
    TResult Function(HttpError value)? httpError,
    required TResult orElse(),
  }) {
    if (serviceError != null) {
      return serviceError(this);
    }
    return orElse();
  }
}

abstract class ServiceError implements MetricsFailures {
  const factory ServiceError({final String? msg}) = _$ServiceErrorImpl;

  @override
  String? get msg;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceErrorImplCopyWith<_$ServiceErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdNotFoundErrorImplCopyWith<$Res>
    implements $MetricsFailuresCopyWith<$Res> {
  factory _$$IdNotFoundErrorImplCopyWith(_$IdNotFoundErrorImpl value,
          $Res Function(_$IdNotFoundErrorImpl) then) =
      __$$IdNotFoundErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$IdNotFoundErrorImplCopyWithImpl<$Res>
    extends _$MetricsFailuresCopyWithImpl<$Res, _$IdNotFoundErrorImpl>
    implements _$$IdNotFoundErrorImplCopyWith<$Res> {
  __$$IdNotFoundErrorImplCopyWithImpl(
      _$IdNotFoundErrorImpl _value, $Res Function(_$IdNotFoundErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$IdNotFoundErrorImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$IdNotFoundErrorImpl implements IdNotFoundError {
  const _$IdNotFoundErrorImpl({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'MetricsFailures.idNotFoundError(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdNotFoundErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdNotFoundErrorImplCopyWith<_$IdNotFoundErrorImpl> get copyWith =>
      __$$IdNotFoundErrorImplCopyWithImpl<_$IdNotFoundErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) serviceError,
    required TResult Function(String? msg) idNotFoundError,
    required TResult Function(String? msg, String? code) unknown,
    required TResult Function(String? msg, int? code) httpError,
  }) {
    return idNotFoundError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? serviceError,
    TResult? Function(String? msg)? idNotFoundError,
    TResult? Function(String? msg, String? code)? unknown,
    TResult? Function(String? msg, int? code)? httpError,
  }) {
    return idNotFoundError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? serviceError,
    TResult Function(String? msg)? idNotFoundError,
    TResult Function(String? msg, String? code)? unknown,
    TResult Function(String? msg, int? code)? httpError,
    required TResult orElse(),
  }) {
    if (idNotFoundError != null) {
      return idNotFoundError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceError value) serviceError,
    required TResult Function(IdNotFoundError value) idNotFoundError,
    required TResult Function(Unknown value) unknown,
    required TResult Function(HttpError value) httpError,
  }) {
    return idNotFoundError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceError value)? serviceError,
    TResult? Function(IdNotFoundError value)? idNotFoundError,
    TResult? Function(Unknown value)? unknown,
    TResult? Function(HttpError value)? httpError,
  }) {
    return idNotFoundError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceError value)? serviceError,
    TResult Function(IdNotFoundError value)? idNotFoundError,
    TResult Function(Unknown value)? unknown,
    TResult Function(HttpError value)? httpError,
    required TResult orElse(),
  }) {
    if (idNotFoundError != null) {
      return idNotFoundError(this);
    }
    return orElse();
  }
}

abstract class IdNotFoundError implements MetricsFailures {
  const factory IdNotFoundError({final String? msg}) = _$IdNotFoundErrorImpl;

  @override
  String? get msg;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdNotFoundErrorImplCopyWith<_$IdNotFoundErrorImpl> get copyWith =>
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
  $Res call({String? msg, String? code});
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
    Object? msg = freezed,
    Object? code = freezed,
  }) {
    return _then(_$UnknownImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownImpl implements Unknown {
  const _$UnknownImpl({this.msg, this.code});

  @override
  final String? msg;
  @override
  final String? code;

  @override
  String toString() {
    return 'MetricsFailures.unknown(msg: $msg, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, code);

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
    required TResult Function(String? msg) serviceError,
    required TResult Function(String? msg) idNotFoundError,
    required TResult Function(String? msg, String? code) unknown,
    required TResult Function(String? msg, int? code) httpError,
  }) {
    return unknown(msg, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? serviceError,
    TResult? Function(String? msg)? idNotFoundError,
    TResult? Function(String? msg, String? code)? unknown,
    TResult? Function(String? msg, int? code)? httpError,
  }) {
    return unknown?.call(msg, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? serviceError,
    TResult Function(String? msg)? idNotFoundError,
    TResult Function(String? msg, String? code)? unknown,
    TResult Function(String? msg, int? code)? httpError,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(msg, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceError value) serviceError,
    required TResult Function(IdNotFoundError value) idNotFoundError,
    required TResult Function(Unknown value) unknown,
    required TResult Function(HttpError value) httpError,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceError value)? serviceError,
    TResult? Function(IdNotFoundError value)? idNotFoundError,
    TResult? Function(Unknown value)? unknown,
    TResult? Function(HttpError value)? httpError,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceError value)? serviceError,
    TResult Function(IdNotFoundError value)? idNotFoundError,
    TResult Function(Unknown value)? unknown,
    TResult Function(HttpError value)? httpError,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements MetricsFailures {
  const factory Unknown({final String? msg, final String? code}) =
      _$UnknownImpl;

  @override
  String? get msg;
  String? get code;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HttpErrorImplCopyWith<$Res>
    implements $MetricsFailuresCopyWith<$Res> {
  factory _$$HttpErrorImplCopyWith(
          _$HttpErrorImpl value, $Res Function(_$HttpErrorImpl) then) =
      __$$HttpErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg, int? code});
}

/// @nodoc
class __$$HttpErrorImplCopyWithImpl<$Res>
    extends _$MetricsFailuresCopyWithImpl<$Res, _$HttpErrorImpl>
    implements _$$HttpErrorImplCopyWith<$Res> {
  __$$HttpErrorImplCopyWithImpl(
      _$HttpErrorImpl _value, $Res Function(_$HttpErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? code = freezed,
  }) {
    return _then(_$HttpErrorImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HttpErrorImpl implements HttpError {
  const _$HttpErrorImpl({this.msg, this.code});

  @override
  final String? msg;
  @override
  final int? code;

  @override
  String toString() {
    return 'MetricsFailures.httpError(msg: $msg, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, code);

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpErrorImplCopyWith<_$HttpErrorImpl> get copyWith =>
      __$$HttpErrorImplCopyWithImpl<_$HttpErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) serviceError,
    required TResult Function(String? msg) idNotFoundError,
    required TResult Function(String? msg, String? code) unknown,
    required TResult Function(String? msg, int? code) httpError,
  }) {
    return httpError(msg, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? serviceError,
    TResult? Function(String? msg)? idNotFoundError,
    TResult? Function(String? msg, String? code)? unknown,
    TResult? Function(String? msg, int? code)? httpError,
  }) {
    return httpError?.call(msg, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? serviceError,
    TResult Function(String? msg)? idNotFoundError,
    TResult Function(String? msg, String? code)? unknown,
    TResult Function(String? msg, int? code)? httpError,
    required TResult orElse(),
  }) {
    if (httpError != null) {
      return httpError(msg, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceError value) serviceError,
    required TResult Function(IdNotFoundError value) idNotFoundError,
    required TResult Function(Unknown value) unknown,
    required TResult Function(HttpError value) httpError,
  }) {
    return httpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceError value)? serviceError,
    TResult? Function(IdNotFoundError value)? idNotFoundError,
    TResult? Function(Unknown value)? unknown,
    TResult? Function(HttpError value)? httpError,
  }) {
    return httpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceError value)? serviceError,
    TResult Function(IdNotFoundError value)? idNotFoundError,
    TResult Function(Unknown value)? unknown,
    TResult Function(HttpError value)? httpError,
    required TResult orElse(),
  }) {
    if (httpError != null) {
      return httpError(this);
    }
    return orElse();
  }
}

abstract class HttpError implements MetricsFailures {
  const factory HttpError({final String? msg, final int? code}) =
      _$HttpErrorImpl;

  @override
  String? get msg;
  int? get code;

  /// Create a copy of MetricsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpErrorImplCopyWith<_$HttpErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
