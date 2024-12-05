// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apps_data_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppsDataBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllAppsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllAppsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllAppsRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllAppsRequested value) getAllAppsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllAppsRequested value)? getAllAppsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllAppsRequested value)? getAllAppsRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsDataBlocEventCopyWith<$Res> {
  factory $AppsDataBlocEventCopyWith(
          AppsDataBlocEvent value, $Res Function(AppsDataBlocEvent) then) =
      _$AppsDataBlocEventCopyWithImpl<$Res, AppsDataBlocEvent>;
}

/// @nodoc
class _$AppsDataBlocEventCopyWithImpl<$Res, $Val extends AppsDataBlocEvent>
    implements $AppsDataBlocEventCopyWith<$Res> {
  _$AppsDataBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppsDataBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllAppsRequestedImplCopyWith<$Res> {
  factory _$$GetAllAppsRequestedImplCopyWith(_$GetAllAppsRequestedImpl value,
          $Res Function(_$GetAllAppsRequestedImpl) then) =
      __$$GetAllAppsRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllAppsRequestedImplCopyWithImpl<$Res>
    extends _$AppsDataBlocEventCopyWithImpl<$Res, _$GetAllAppsRequestedImpl>
    implements _$$GetAllAppsRequestedImplCopyWith<$Res> {
  __$$GetAllAppsRequestedImplCopyWithImpl(_$GetAllAppsRequestedImpl _value,
      $Res Function(_$GetAllAppsRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllAppsRequestedImpl implements _GetAllAppsRequested {
  const _$GetAllAppsRequestedImpl();

  @override
  String toString() {
    return 'AppsDataBlocEvent.getAllAppsRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllAppsRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllAppsRequested,
  }) {
    return getAllAppsRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllAppsRequested,
  }) {
    return getAllAppsRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllAppsRequested,
    required TResult orElse(),
  }) {
    if (getAllAppsRequested != null) {
      return getAllAppsRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllAppsRequested value) getAllAppsRequested,
  }) {
    return getAllAppsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllAppsRequested value)? getAllAppsRequested,
  }) {
    return getAllAppsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllAppsRequested value)? getAllAppsRequested,
    required TResult orElse(),
  }) {
    if (getAllAppsRequested != null) {
      return getAllAppsRequested(this);
    }
    return orElse();
  }
}

abstract class _GetAllAppsRequested implements AppsDataBlocEvent {
  const factory _GetAllAppsRequested() = _$GetAllAppsRequestedImpl;
}

/// @nodoc
mixin _$AppsDataBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Apps> apps) loaded,
    required TResult Function() noAppYet,
    required TResult Function(AppsDataFailures failures) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Apps> apps)? loaded,
    TResult? Function()? noAppYet,
    TResult? Function(AppsDataFailures failures)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Apps> apps)? loaded,
    TResult Function()? noAppYet,
    TResult Function(AppsDataFailures failures)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoAppYet value) noAppYet,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoAppYet value)? noAppYet,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoAppYet value)? noAppYet,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsDataBlocStateCopyWith<$Res> {
  factory $AppsDataBlocStateCopyWith(
          AppsDataBlocState value, $Res Function(AppsDataBlocState) then) =
      _$AppsDataBlocStateCopyWithImpl<$Res, AppsDataBlocState>;
}

/// @nodoc
class _$AppsDataBlocStateCopyWithImpl<$Res, $Val extends AppsDataBlocState>
    implements $AppsDataBlocStateCopyWith<$Res> {
  _$AppsDataBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppsDataBlocStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppsDataBlocState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Apps> apps) loaded,
    required TResult Function() noAppYet,
    required TResult Function(AppsDataFailures failures) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Apps> apps)? loaded,
    TResult? Function()? noAppYet,
    TResult? Function(AppsDataFailures failures)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Apps> apps)? loaded,
    TResult Function()? noAppYet,
    TResult Function(AppsDataFailures failures)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoAppYet value) noAppYet,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoAppYet value)? noAppYet,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoAppYet value)? noAppYet,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppsDataBlocState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AppsDataBlocStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AppsDataBlocState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Apps> apps) loaded,
    required TResult Function() noAppYet,
    required TResult Function(AppsDataFailures failures) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Apps> apps)? loaded,
    TResult? Function()? noAppYet,
    TResult? Function(AppsDataFailures failures)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Apps> apps)? loaded,
    TResult Function()? noAppYet,
    TResult Function(AppsDataFailures failures)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoAppYet value) noAppYet,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoAppYet value)? noAppYet,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoAppYet value)? noAppYet,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AppsDataBlocState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Apps> apps});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AppsDataBlocStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apps = null,
  }) {
    return _then(_$LoadedImpl(
      null == apps
          ? _value._apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<Apps>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Apps> apps) : _apps = apps;

  final List<Apps> _apps;
  @override
  List<Apps> get apps {
    if (_apps is EqualUnmodifiableListView) return _apps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apps);
  }

  @override
  String toString() {
    return 'AppsDataBlocState.loaded(apps: $apps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._apps, _apps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_apps));

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Apps> apps) loaded,
    required TResult Function() noAppYet,
    required TResult Function(AppsDataFailures failures) failed,
  }) {
    return loaded(apps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Apps> apps)? loaded,
    TResult? Function()? noAppYet,
    TResult? Function(AppsDataFailures failures)? failed,
  }) {
    return loaded?.call(apps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Apps> apps)? loaded,
    TResult Function()? noAppYet,
    TResult Function(AppsDataFailures failures)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(apps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoAppYet value) noAppYet,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoAppYet value)? noAppYet,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoAppYet value)? noAppYet,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AppsDataBlocState {
  const factory _Loaded(final List<Apps> apps) = _$LoadedImpl;

  List<Apps> get apps;

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAppYetImplCopyWith<$Res> {
  factory _$$NoAppYetImplCopyWith(
          _$NoAppYetImpl value, $Res Function(_$NoAppYetImpl) then) =
      __$$NoAppYetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoAppYetImplCopyWithImpl<$Res>
    extends _$AppsDataBlocStateCopyWithImpl<$Res, _$NoAppYetImpl>
    implements _$$NoAppYetImplCopyWith<$Res> {
  __$$NoAppYetImplCopyWithImpl(
      _$NoAppYetImpl _value, $Res Function(_$NoAppYetImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoAppYetImpl implements _NoAppYet {
  const _$NoAppYetImpl();

  @override
  String toString() {
    return 'AppsDataBlocState.noAppYet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoAppYetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Apps> apps) loaded,
    required TResult Function() noAppYet,
    required TResult Function(AppsDataFailures failures) failed,
  }) {
    return noAppYet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Apps> apps)? loaded,
    TResult? Function()? noAppYet,
    TResult? Function(AppsDataFailures failures)? failed,
  }) {
    return noAppYet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Apps> apps)? loaded,
    TResult Function()? noAppYet,
    TResult Function(AppsDataFailures failures)? failed,
    required TResult orElse(),
  }) {
    if (noAppYet != null) {
      return noAppYet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoAppYet value) noAppYet,
    required TResult Function(_Failed value) failed,
  }) {
    return noAppYet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoAppYet value)? noAppYet,
    TResult? Function(_Failed value)? failed,
  }) {
    return noAppYet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoAppYet value)? noAppYet,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (noAppYet != null) {
      return noAppYet(this);
    }
    return orElse();
  }
}

abstract class _NoAppYet implements AppsDataBlocState {
  const factory _NoAppYet() = _$NoAppYetImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppsDataFailures failures});

  $AppsDataFailuresCopyWith<$Res> get failures;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$AppsDataBlocStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failures = null,
  }) {
    return _then(_$FailedImpl(
      null == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as AppsDataFailures,
    ));
  }

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppsDataFailuresCopyWith<$Res> get failures {
    return $AppsDataFailuresCopyWith<$Res>(_value.failures, (value) {
      return _then(_value.copyWith(failures: value));
    });
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.failures);

  @override
  final AppsDataFailures failures;

  @override
  String toString() {
    return 'AppsDataBlocState.failed(failures: $failures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.failures, failures) ||
                other.failures == failures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failures);

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Apps> apps) loaded,
    required TResult Function() noAppYet,
    required TResult Function(AppsDataFailures failures) failed,
  }) {
    return failed(failures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Apps> apps)? loaded,
    TResult? Function()? noAppYet,
    TResult? Function(AppsDataFailures failures)? failed,
  }) {
    return failed?.call(failures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Apps> apps)? loaded,
    TResult Function()? noAppYet,
    TResult Function(AppsDataFailures failures)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoAppYet value) noAppYet,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoAppYet value)? noAppYet,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoAppYet value)? noAppYet,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AppsDataBlocState {
  const factory _Failed(final AppsDataFailures failures) = _$FailedImpl;

  AppsDataFailures get failures;

  /// Create a copy of AppsDataBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
