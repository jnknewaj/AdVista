// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentsFailures {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String code, String msg) serverFailure,
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String code, String msg)? serverFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? networkFailure,
    TResult Function(String code, String msg)? serverFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_Unknwon value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_Unknwon value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_Unknwon value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentsFailuresCopyWith<PaymentsFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsFailuresCopyWith<$Res> {
  factory $PaymentsFailuresCopyWith(
          PaymentsFailures value, $Res Function(PaymentsFailures) then) =
      _$PaymentsFailuresCopyWithImpl<$Res, PaymentsFailures>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$PaymentsFailuresCopyWithImpl<$Res, $Val extends PaymentsFailures>
    implements $PaymentsFailuresCopyWith<$Res> {
  _$PaymentsFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentsFailures
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
abstract class _$$TokenNotFoundImplCopyWith<$Res>
    implements $PaymentsFailuresCopyWith<$Res> {
  factory _$$TokenNotFoundImplCopyWith(
          _$TokenNotFoundImpl value, $Res Function(_$TokenNotFoundImpl) then) =
      __$$TokenNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$TokenNotFoundImplCopyWithImpl<$Res>
    extends _$PaymentsFailuresCopyWithImpl<$Res, _$TokenNotFoundImpl>
    implements _$$TokenNotFoundImplCopyWith<$Res> {
  __$$TokenNotFoundImplCopyWithImpl(
      _$TokenNotFoundImpl _value, $Res Function(_$TokenNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsFailures
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
    return 'PaymentsFailures.tokenNotFound(msg: $msg)';
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

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenNotFoundImplCopyWith<_$TokenNotFoundImpl> get copyWith =>
      __$$TokenNotFoundImplCopyWithImpl<_$TokenNotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String code, String msg) serverFailure,
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) unknown,
  }) {
    return tokenNotFound(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String code, String msg)? serverFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return tokenNotFound?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? networkFailure,
    TResult Function(String code, String msg)? serverFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
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
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_Unknwon value) unknown,
  }) {
    return tokenNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_Unknwon value)? unknown,
  }) {
    return tokenNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_Unknwon value)? unknown,
    required TResult orElse(),
  }) {
    if (tokenNotFound != null) {
      return tokenNotFound(this);
    }
    return orElse();
  }
}

abstract class _TokenNotFound implements PaymentsFailures {
  const factory _TokenNotFound(final String msg) = _$TokenNotFoundImpl;

  @override
  String get msg;

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenNotFoundImplCopyWith<_$TokenNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdNotFoundImplCopyWith<$Res>
    implements $PaymentsFailuresCopyWith<$Res> {
  factory _$$IdNotFoundImplCopyWith(
          _$IdNotFoundImpl value, $Res Function(_$IdNotFoundImpl) then) =
      __$$IdNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$IdNotFoundImplCopyWithImpl<$Res>
    extends _$PaymentsFailuresCopyWithImpl<$Res, _$IdNotFoundImpl>
    implements _$$IdNotFoundImplCopyWith<$Res> {
  __$$IdNotFoundImplCopyWithImpl(
      _$IdNotFoundImpl _value, $Res Function(_$IdNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsFailures
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
    return 'PaymentsFailures.idNotFound(msg: $msg)';
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

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdNotFoundImplCopyWith<_$IdNotFoundImpl> get copyWith =>
      __$$IdNotFoundImplCopyWithImpl<_$IdNotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String code, String msg) serverFailure,
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) unknown,
  }) {
    return idNotFound(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String code, String msg)? serverFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return idNotFound?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? networkFailure,
    TResult Function(String code, String msg)? serverFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
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
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_Unknwon value) unknown,
  }) {
    return idNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_Unknwon value)? unknown,
  }) {
    return idNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_Unknwon value)? unknown,
    required TResult orElse(),
  }) {
    if (idNotFound != null) {
      return idNotFound(this);
    }
    return orElse();
  }
}

abstract class _IdNotFound implements PaymentsFailures {
  const factory _IdNotFound(final String msg) = _$IdNotFoundImpl;

  @override
  String get msg;

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdNotFoundImplCopyWith<_$IdNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res>
    implements $PaymentsFailuresCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$PaymentsFailuresCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsFailures
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
    return 'PaymentsFailures.networkFailure(msg: $msg)';
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

  /// Create a copy of PaymentsFailures
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
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String code, String msg) serverFailure,
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) unknown,
  }) {
    return networkFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String code, String msg)? serverFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return networkFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? networkFailure,
    TResult Function(String code, String msg)? serverFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
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
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_Unknwon value) unknown,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_Unknwon value)? unknown,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_Unknwon value)? unknown,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure implements PaymentsFailures {
  const factory _NetworkFailure(final String msg) = _$NetworkFailureImpl;

  @override
  String get msg;

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $PaymentsFailuresCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String msg});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$PaymentsFailuresCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_$ServerFailureImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl(this.code, this.msg);

  @override
  final String code;
  @override
  final String msg;

  @override
  String toString() {
    return 'PaymentsFailures.serverFailure(code: $code, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, msg);

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String code, String msg) serverFailure,
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) unknown,
  }) {
    return serverFailure(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String code, String msg)? serverFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return serverFailure?.call(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? networkFailure,
    TResult Function(String code, String msg)? serverFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(code, msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_Unknwon value) unknown,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_Unknwon value)? unknown,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_Unknwon value)? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements PaymentsFailures {
  const factory _ServerFailure(final String code, final String msg) =
      _$ServerFailureImpl;

  String get code;
  @override
  String get msg;

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeoutImplCopyWith<$Res>
    implements $PaymentsFailuresCopyWith<$Res> {
  factory _$$TimeoutImplCopyWith(
          _$TimeoutImpl value, $Res Function(_$TimeoutImpl) then) =
      __$$TimeoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$TimeoutImplCopyWithImpl<$Res>
    extends _$PaymentsFailuresCopyWithImpl<$Res, _$TimeoutImpl>
    implements _$$TimeoutImplCopyWith<$Res> {
  __$$TimeoutImplCopyWithImpl(
      _$TimeoutImpl _value, $Res Function(_$TimeoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$TimeoutImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeoutImpl implements _Timeout {
  const _$TimeoutImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'PaymentsFailures.timeout(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeoutImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeoutImplCopyWith<_$TimeoutImpl> get copyWith =>
      __$$TimeoutImplCopyWithImpl<_$TimeoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String code, String msg) serverFailure,
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) unknown,
  }) {
    return timeout(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String code, String msg)? serverFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return timeout?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? networkFailure,
    TResult Function(String code, String msg)? serverFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
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
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_Unknwon value) unknown,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_Unknwon value)? unknown,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_Unknwon value)? unknown,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout implements PaymentsFailures {
  const factory _Timeout(final String msg) = _$TimeoutImpl;

  @override
  String get msg;

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeoutImplCopyWith<_$TimeoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsingFailureImplCopyWith<$Res>
    implements $PaymentsFailuresCopyWith<$Res> {
  factory _$$ParsingFailureImplCopyWith(_$ParsingFailureImpl value,
          $Res Function(_$ParsingFailureImpl) then) =
      __$$ParsingFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ParsingFailureImplCopyWithImpl<$Res>
    extends _$PaymentsFailuresCopyWithImpl<$Res, _$ParsingFailureImpl>
    implements _$$ParsingFailureImplCopyWith<$Res> {
  __$$ParsingFailureImplCopyWithImpl(
      _$ParsingFailureImpl _value, $Res Function(_$ParsingFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsFailures
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
    return 'PaymentsFailures.parsingFailure(msg: $msg)';
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

  /// Create a copy of PaymentsFailures
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
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String code, String msg) serverFailure,
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) unknown,
  }) {
    return parsingFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String code, String msg)? serverFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return parsingFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? networkFailure,
    TResult Function(String code, String msg)? serverFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
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
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_Unknwon value) unknown,
  }) {
    return parsingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_Unknwon value)? unknown,
  }) {
    return parsingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_Unknwon value)? unknown,
    required TResult orElse(),
  }) {
    if (parsingFailure != null) {
      return parsingFailure(this);
    }
    return orElse();
  }
}

abstract class _ParsingFailure implements PaymentsFailures {
  const factory _ParsingFailure(final String msg) = _$ParsingFailureImpl;

  @override
  String get msg;

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsingFailureImplCopyWith<_$ParsingFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknwonImplCopyWith<$Res>
    implements $PaymentsFailuresCopyWith<$Res> {
  factory _$$UnknwonImplCopyWith(
          _$UnknwonImpl value, $Res Function(_$UnknwonImpl) then) =
      __$$UnknwonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$UnknwonImplCopyWithImpl<$Res>
    extends _$PaymentsFailuresCopyWithImpl<$Res, _$UnknwonImpl>
    implements _$$UnknwonImplCopyWith<$Res> {
  __$$UnknwonImplCopyWithImpl(
      _$UnknwonImpl _value, $Res Function(_$UnknwonImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$UnknwonImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknwonImpl implements _Unknwon {
  const _$UnknwonImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'PaymentsFailures.unknown(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknwonImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknwonImplCopyWith<_$UnknwonImpl> get copyWith =>
      __$$UnknwonImplCopyWithImpl<_$UnknwonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) tokenNotFound,
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String code, String msg) serverFailure,
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) parsingFailure,
    required TResult Function(String msg) unknown,
  }) {
    return unknown(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? tokenNotFound,
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String code, String msg)? serverFailure,
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? parsingFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return unknown?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? tokenNotFound,
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? networkFailure,
    TResult Function(String code, String msg)? serverFailure,
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? parsingFailure,
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
    required TResult Function(_TokenNotFound value) tokenNotFound,
    required TResult Function(_IdNotFound value) idNotFound,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParsingFailure value) parsingFailure,
    required TResult Function(_Unknwon value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TokenNotFound value)? tokenNotFound,
    TResult? Function(_IdNotFound value)? idNotFound,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParsingFailure value)? parsingFailure,
    TResult? Function(_Unknwon value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenNotFound value)? tokenNotFound,
    TResult Function(_IdNotFound value)? idNotFound,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParsingFailure value)? parsingFailure,
    TResult Function(_Unknwon value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknwon implements PaymentsFailures {
  const factory _Unknwon(final String msg) = _$UnknwonImpl;

  @override
  String get msg;

  /// Create a copy of PaymentsFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknwonImplCopyWith<_$UnknwonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
