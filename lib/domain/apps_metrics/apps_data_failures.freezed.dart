// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apps_data_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppsDataFailures {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeoutFailure,
    required TResult Function(String msg) tokenNotFoundFailure,
    required TResult Function(String msg) htmlFailure,
    required TResult Function(String msg) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeoutFailure,
    TResult? Function(String msg)? tokenNotFoundFailure,
    TResult? Function(String msg)? htmlFailure,
    TResult? Function(String msg)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeoutFailure,
    TResult Function(String msg)? tokenNotFoundFailure,
    TResult Function(String msg)? htmlFailure,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(ParsingFailure value) tokenNotFoundFailure,
    required TResult Function(HtmlFailure value) htmlFailure,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeoutFailure value)? timeoutFailure,
    TResult? Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult? Function(HtmlFailure value)? htmlFailure,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult Function(HtmlFailure value)? htmlFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppsDataFailuresCopyWith<AppsDataFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsDataFailuresCopyWith<$Res> {
  factory $AppsDataFailuresCopyWith(
          AppsDataFailures value, $Res Function(AppsDataFailures) then) =
      _$AppsDataFailuresCopyWithImpl<$Res, AppsDataFailures>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$AppsDataFailuresCopyWithImpl<$Res, $Val extends AppsDataFailures>
    implements $AppsDataFailuresCopyWith<$Res> {
  _$AppsDataFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppsDataFailures
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
abstract class _$$IdNotFoundImplCopyWith<$Res>
    implements $AppsDataFailuresCopyWith<$Res> {
  factory _$$IdNotFoundImplCopyWith(
          _$IdNotFoundImpl value, $Res Function(_$IdNotFoundImpl) then) =
      __$$IdNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$IdNotFoundImplCopyWithImpl<$Res>
    extends _$AppsDataFailuresCopyWithImpl<$Res, _$IdNotFoundImpl>
    implements _$$IdNotFoundImplCopyWith<$Res> {
  __$$IdNotFoundImplCopyWithImpl(
      _$IdNotFoundImpl _value, $Res Function(_$IdNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataFailures
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

class _$IdNotFoundImpl implements IdNotFound {
  const _$IdNotFoundImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AppsDataFailures.idNotFound(msg: $msg)';
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

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdNotFoundImplCopyWith<_$IdNotFoundImpl> get copyWith =>
      __$$IdNotFoundImplCopyWithImpl<_$IdNotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeoutFailure,
    required TResult Function(String msg) tokenNotFoundFailure,
    required TResult Function(String msg) htmlFailure,
    required TResult Function(String msg) unknown,
  }) {
    return idNotFound(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeoutFailure,
    TResult? Function(String msg)? tokenNotFoundFailure,
    TResult? Function(String msg)? htmlFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return idNotFound?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeoutFailure,
    TResult Function(String msg)? tokenNotFoundFailure,
    TResult Function(String msg)? htmlFailure,
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
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(ParsingFailure value) tokenNotFoundFailure,
    required TResult Function(HtmlFailure value) htmlFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return idNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeoutFailure value)? timeoutFailure,
    TResult? Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult? Function(HtmlFailure value)? htmlFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return idNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult Function(HtmlFailure value)? htmlFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (idNotFound != null) {
      return idNotFound(this);
    }
    return orElse();
  }
}

abstract class IdNotFound implements AppsDataFailures {
  const factory IdNotFound(final String msg) = _$IdNotFoundImpl;

  @override
  String get msg;

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdNotFoundImplCopyWith<_$IdNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $AppsDataFailuresCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$AppsDataFailuresCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataFailures
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

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AppsDataFailures.serverFailure(msg: $msg)';
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

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeoutFailure,
    required TResult Function(String msg) tokenNotFoundFailure,
    required TResult Function(String msg) htmlFailure,
    required TResult Function(String msg) unknown,
  }) {
    return serverFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeoutFailure,
    TResult? Function(String msg)? tokenNotFoundFailure,
    TResult? Function(String msg)? htmlFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return serverFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeoutFailure,
    TResult Function(String msg)? tokenNotFoundFailure,
    TResult Function(String msg)? htmlFailure,
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
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(ParsingFailure value) tokenNotFoundFailure,
    required TResult Function(HtmlFailure value) htmlFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeoutFailure value)? timeoutFailure,
    TResult? Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult? Function(HtmlFailure value)? htmlFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult Function(HtmlFailure value)? htmlFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements AppsDataFailures {
  const factory ServerFailure(final String msg) = _$ServerFailureImpl;

  @override
  String get msg;

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res>
    implements $AppsDataFailuresCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$AppsDataFailuresCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataFailures
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

class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AppsDataFailures.networkFailure(msg: $msg)';
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

  /// Create a copy of AppsDataFailures
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
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeoutFailure,
    required TResult Function(String msg) tokenNotFoundFailure,
    required TResult Function(String msg) htmlFailure,
    required TResult Function(String msg) unknown,
  }) {
    return networkFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeoutFailure,
    TResult? Function(String msg)? tokenNotFoundFailure,
    TResult? Function(String msg)? htmlFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return networkFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeoutFailure,
    TResult Function(String msg)? tokenNotFoundFailure,
    TResult Function(String msg)? htmlFailure,
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
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(ParsingFailure value) tokenNotFoundFailure,
    required TResult Function(HtmlFailure value) htmlFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeoutFailure value)? timeoutFailure,
    TResult? Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult? Function(HtmlFailure value)? htmlFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult Function(HtmlFailure value)? htmlFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements AppsDataFailures {
  const factory NetworkFailure(final String msg) = _$NetworkFailureImpl;

  @override
  String get msg;

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeoutFailureImplCopyWith<$Res>
    implements $AppsDataFailuresCopyWith<$Res> {
  factory _$$TimeoutFailureImplCopyWith(_$TimeoutFailureImpl value,
          $Res Function(_$TimeoutFailureImpl) then) =
      __$$TimeoutFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$TimeoutFailureImplCopyWithImpl<$Res>
    extends _$AppsDataFailuresCopyWithImpl<$Res, _$TimeoutFailureImpl>
    implements _$$TimeoutFailureImplCopyWith<$Res> {
  __$$TimeoutFailureImplCopyWithImpl(
      _$TimeoutFailureImpl _value, $Res Function(_$TimeoutFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$TimeoutFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeoutFailureImpl implements TimeoutFailure {
  const _$TimeoutFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AppsDataFailures.timeoutFailure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeoutFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeoutFailureImplCopyWith<_$TimeoutFailureImpl> get copyWith =>
      __$$TimeoutFailureImplCopyWithImpl<_$TimeoutFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeoutFailure,
    required TResult Function(String msg) tokenNotFoundFailure,
    required TResult Function(String msg) htmlFailure,
    required TResult Function(String msg) unknown,
  }) {
    return timeoutFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeoutFailure,
    TResult? Function(String msg)? tokenNotFoundFailure,
    TResult? Function(String msg)? htmlFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return timeoutFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeoutFailure,
    TResult Function(String msg)? tokenNotFoundFailure,
    TResult Function(String msg)? htmlFailure,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (timeoutFailure != null) {
      return timeoutFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(ParsingFailure value) tokenNotFoundFailure,
    required TResult Function(HtmlFailure value) htmlFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return timeoutFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeoutFailure value)? timeoutFailure,
    TResult? Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult? Function(HtmlFailure value)? htmlFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return timeoutFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult Function(HtmlFailure value)? htmlFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (timeoutFailure != null) {
      return timeoutFailure(this);
    }
    return orElse();
  }
}

abstract class TimeoutFailure implements AppsDataFailures {
  const factory TimeoutFailure(final String msg) = _$TimeoutFailureImpl;

  @override
  String get msg;

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeoutFailureImplCopyWith<_$TimeoutFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsingFailureImplCopyWith<$Res>
    implements $AppsDataFailuresCopyWith<$Res> {
  factory _$$ParsingFailureImplCopyWith(_$ParsingFailureImpl value,
          $Res Function(_$ParsingFailureImpl) then) =
      __$$ParsingFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ParsingFailureImplCopyWithImpl<$Res>
    extends _$AppsDataFailuresCopyWithImpl<$Res, _$ParsingFailureImpl>
    implements _$$ParsingFailureImplCopyWith<$Res> {
  __$$ParsingFailureImplCopyWithImpl(
      _$ParsingFailureImpl _value, $Res Function(_$ParsingFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataFailures
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

class _$ParsingFailureImpl implements ParsingFailure {
  const _$ParsingFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AppsDataFailures.tokenNotFoundFailure(msg: $msg)';
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

  /// Create a copy of AppsDataFailures
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
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeoutFailure,
    required TResult Function(String msg) tokenNotFoundFailure,
    required TResult Function(String msg) htmlFailure,
    required TResult Function(String msg) unknown,
  }) {
    return tokenNotFoundFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeoutFailure,
    TResult? Function(String msg)? tokenNotFoundFailure,
    TResult? Function(String msg)? htmlFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return tokenNotFoundFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeoutFailure,
    TResult Function(String msg)? tokenNotFoundFailure,
    TResult Function(String msg)? htmlFailure,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (tokenNotFoundFailure != null) {
      return tokenNotFoundFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(ParsingFailure value) tokenNotFoundFailure,
    required TResult Function(HtmlFailure value) htmlFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return tokenNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeoutFailure value)? timeoutFailure,
    TResult? Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult? Function(HtmlFailure value)? htmlFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return tokenNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult Function(HtmlFailure value)? htmlFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (tokenNotFoundFailure != null) {
      return tokenNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class ParsingFailure implements AppsDataFailures {
  const factory ParsingFailure(final String msg) = _$ParsingFailureImpl;

  @override
  String get msg;

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsingFailureImplCopyWith<_$ParsingFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HtmlFailureImplCopyWith<$Res>
    implements $AppsDataFailuresCopyWith<$Res> {
  factory _$$HtmlFailureImplCopyWith(
          _$HtmlFailureImpl value, $Res Function(_$HtmlFailureImpl) then) =
      __$$HtmlFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$HtmlFailureImplCopyWithImpl<$Res>
    extends _$AppsDataFailuresCopyWithImpl<$Res, _$HtmlFailureImpl>
    implements _$$HtmlFailureImplCopyWith<$Res> {
  __$$HtmlFailureImplCopyWithImpl(
      _$HtmlFailureImpl _value, $Res Function(_$HtmlFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$HtmlFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HtmlFailureImpl implements HtmlFailure {
  const _$HtmlFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AppsDataFailures.htmlFailure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HtmlFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HtmlFailureImplCopyWith<_$HtmlFailureImpl> get copyWith =>
      __$$HtmlFailureImplCopyWithImpl<_$HtmlFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeoutFailure,
    required TResult Function(String msg) tokenNotFoundFailure,
    required TResult Function(String msg) htmlFailure,
    required TResult Function(String msg) unknown,
  }) {
    return htmlFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeoutFailure,
    TResult? Function(String msg)? tokenNotFoundFailure,
    TResult? Function(String msg)? htmlFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return htmlFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeoutFailure,
    TResult Function(String msg)? tokenNotFoundFailure,
    TResult Function(String msg)? htmlFailure,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (htmlFailure != null) {
      return htmlFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(ParsingFailure value) tokenNotFoundFailure,
    required TResult Function(HtmlFailure value) htmlFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return htmlFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeoutFailure value)? timeoutFailure,
    TResult? Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult? Function(HtmlFailure value)? htmlFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return htmlFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult Function(HtmlFailure value)? htmlFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (htmlFailure != null) {
      return htmlFailure(this);
    }
    return orElse();
  }
}

abstract class HtmlFailure implements AppsDataFailures {
  const factory HtmlFailure(final String msg) = _$HtmlFailureImpl;

  @override
  String get msg;

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HtmlFailureImplCopyWith<_$HtmlFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res>
    implements $AppsDataFailuresCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AppsDataFailuresCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataFailures
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

class _$UnknownImpl implements Unknown {
  const _$UnknownImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AppsDataFailures.unknown(msg: $msg)';
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

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) idNotFound,
    required TResult Function(String msg) serverFailure,
    required TResult Function(String msg) networkFailure,
    required TResult Function(String msg) timeoutFailure,
    required TResult Function(String msg) tokenNotFoundFailure,
    required TResult Function(String msg) htmlFailure,
    required TResult Function(String msg) unknown,
  }) {
    return unknown(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? idNotFound,
    TResult? Function(String msg)? serverFailure,
    TResult? Function(String msg)? networkFailure,
    TResult? Function(String msg)? timeoutFailure,
    TResult? Function(String msg)? tokenNotFoundFailure,
    TResult? Function(String msg)? htmlFailure,
    TResult? Function(String msg)? unknown,
  }) {
    return unknown?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? idNotFound,
    TResult Function(String msg)? serverFailure,
    TResult Function(String msg)? networkFailure,
    TResult Function(String msg)? timeoutFailure,
    TResult Function(String msg)? tokenNotFoundFailure,
    TResult Function(String msg)? htmlFailure,
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
    required TResult Function(IdNotFound value) idNotFound,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(ParsingFailure value) tokenNotFoundFailure,
    required TResult Function(HtmlFailure value) htmlFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdNotFound value)? idNotFound,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(TimeoutFailure value)? timeoutFailure,
    TResult? Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult? Function(HtmlFailure value)? htmlFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdNotFound value)? idNotFound,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(ParsingFailure value)? tokenNotFoundFailure,
    TResult Function(HtmlFailure value)? htmlFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements AppsDataFailures {
  const factory Unknown(final String msg) = _$UnknownImpl;

  @override
  String get msg;

  /// Create a copy of AppsDataFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
