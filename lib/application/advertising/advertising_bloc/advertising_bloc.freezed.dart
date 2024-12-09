// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertising_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdvertisingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bannerRequested,
    required TResult Function(BannerAd bannerAd) bannerAdLoaded,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bannerRequested,
    TResult? Function(BannerAd bannerAd)? bannerAdLoaded,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bannerRequested,
    TResult Function(BannerAd bannerAd)? bannerAdLoaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BannerRequested value) bannerRequested,
    required TResult Function(_BannerAdLoaded value) bannerAdLoaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BannerRequested value)? bannerRequested,
    TResult? Function(_BannerAdLoaded value)? bannerAdLoaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BannerRequested value)? bannerRequested,
    TResult Function(_BannerAdLoaded value)? bannerAdLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisingEventCopyWith<$Res> {
  factory $AdvertisingEventCopyWith(
          AdvertisingEvent value, $Res Function(AdvertisingEvent) then) =
      _$AdvertisingEventCopyWithImpl<$Res, AdvertisingEvent>;
}

/// @nodoc
class _$AdvertisingEventCopyWithImpl<$Res, $Val extends AdvertisingEvent>
    implements $AdvertisingEventCopyWith<$Res> {
  _$AdvertisingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertisingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BannerRequestedImplCopyWith<$Res> {
  factory _$$BannerRequestedImplCopyWith(_$BannerRequestedImpl value,
          $Res Function(_$BannerRequestedImpl) then) =
      __$$BannerRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BannerRequestedImplCopyWithImpl<$Res>
    extends _$AdvertisingEventCopyWithImpl<$Res, _$BannerRequestedImpl>
    implements _$$BannerRequestedImplCopyWith<$Res> {
  __$$BannerRequestedImplCopyWithImpl(
      _$BannerRequestedImpl _value, $Res Function(_$BannerRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BannerRequestedImpl implements _BannerRequested {
  const _$BannerRequestedImpl();

  @override
  String toString() {
    return 'AdvertisingEvent.bannerRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BannerRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bannerRequested,
    required TResult Function(BannerAd bannerAd) bannerAdLoaded,
    required TResult Function() failed,
  }) {
    return bannerRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bannerRequested,
    TResult? Function(BannerAd bannerAd)? bannerAdLoaded,
    TResult? Function()? failed,
  }) {
    return bannerRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bannerRequested,
    TResult Function(BannerAd bannerAd)? bannerAdLoaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (bannerRequested != null) {
      return bannerRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BannerRequested value) bannerRequested,
    required TResult Function(_BannerAdLoaded value) bannerAdLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return bannerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BannerRequested value)? bannerRequested,
    TResult? Function(_BannerAdLoaded value)? bannerAdLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return bannerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BannerRequested value)? bannerRequested,
    TResult Function(_BannerAdLoaded value)? bannerAdLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (bannerRequested != null) {
      return bannerRequested(this);
    }
    return orElse();
  }
}

abstract class _BannerRequested implements AdvertisingEvent {
  const factory _BannerRequested() = _$BannerRequestedImpl;
}

/// @nodoc
abstract class _$$BannerAdLoadedImplCopyWith<$Res> {
  factory _$$BannerAdLoadedImplCopyWith(_$BannerAdLoadedImpl value,
          $Res Function(_$BannerAdLoadedImpl) then) =
      __$$BannerAdLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BannerAd bannerAd});
}

/// @nodoc
class __$$BannerAdLoadedImplCopyWithImpl<$Res>
    extends _$AdvertisingEventCopyWithImpl<$Res, _$BannerAdLoadedImpl>
    implements _$$BannerAdLoadedImplCopyWith<$Res> {
  __$$BannerAdLoadedImplCopyWithImpl(
      _$BannerAdLoadedImpl _value, $Res Function(_$BannerAdLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerAd = null,
  }) {
    return _then(_$BannerAdLoadedImpl(
      null == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd,
    ));
  }
}

/// @nodoc

class _$BannerAdLoadedImpl implements _BannerAdLoaded {
  const _$BannerAdLoadedImpl(this.bannerAd);

  @override
  final BannerAd bannerAd;

  @override
  String toString() {
    return 'AdvertisingEvent.bannerAdLoaded(bannerAd: $bannerAd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerAdLoadedImpl &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bannerAd);

  /// Create a copy of AdvertisingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerAdLoadedImplCopyWith<_$BannerAdLoadedImpl> get copyWith =>
      __$$BannerAdLoadedImplCopyWithImpl<_$BannerAdLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bannerRequested,
    required TResult Function(BannerAd bannerAd) bannerAdLoaded,
    required TResult Function() failed,
  }) {
    return bannerAdLoaded(bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bannerRequested,
    TResult? Function(BannerAd bannerAd)? bannerAdLoaded,
    TResult? Function()? failed,
  }) {
    return bannerAdLoaded?.call(bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bannerRequested,
    TResult Function(BannerAd bannerAd)? bannerAdLoaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (bannerAdLoaded != null) {
      return bannerAdLoaded(bannerAd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BannerRequested value) bannerRequested,
    required TResult Function(_BannerAdLoaded value) bannerAdLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return bannerAdLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BannerRequested value)? bannerRequested,
    TResult? Function(_BannerAdLoaded value)? bannerAdLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return bannerAdLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BannerRequested value)? bannerRequested,
    TResult Function(_BannerAdLoaded value)? bannerAdLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (bannerAdLoaded != null) {
      return bannerAdLoaded(this);
    }
    return orElse();
  }
}

abstract class _BannerAdLoaded implements AdvertisingEvent {
  const factory _BannerAdLoaded(final BannerAd bannerAd) = _$BannerAdLoadedImpl;

  BannerAd get bannerAd;

  /// Create a copy of AdvertisingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerAdLoadedImplCopyWith<_$BannerAdLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$AdvertisingEventCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'AdvertisingEvent.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bannerRequested,
    required TResult Function(BannerAd bannerAd) bannerAdLoaded,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bannerRequested,
    TResult? Function(BannerAd bannerAd)? bannerAdLoaded,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bannerRequested,
    TResult Function(BannerAd bannerAd)? bannerAdLoaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BannerRequested value) bannerRequested,
    required TResult Function(_BannerAdLoaded value) bannerAdLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BannerRequested value)? bannerRequested,
    TResult? Function(_BannerAdLoaded value)? bannerAdLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BannerRequested value)? bannerRequested,
    TResult Function(_BannerAdLoaded value)? bannerAdLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AdvertisingEvent {
  const factory _Failed() = _$FailedImpl;
}

/// @nodoc
mixin _$AdvertisingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BannerAd bannerAd) loaded,
    required TResult Function(AdvertisingFailures failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BannerAd bannerAd)? loaded,
    TResult? Function(AdvertisingFailures failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(AdvertisingFailures failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisingStateCopyWith<$Res> {
  factory $AdvertisingStateCopyWith(
          AdvertisingState value, $Res Function(AdvertisingState) then) =
      _$AdvertisingStateCopyWithImpl<$Res, AdvertisingState>;
}

/// @nodoc
class _$AdvertisingStateCopyWithImpl<$Res, $Val extends AdvertisingState>
    implements $AdvertisingStateCopyWith<$Res> {
  _$AdvertisingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertisingState
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
    extends _$AdvertisingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AdvertisingState.initial()';
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
    required TResult Function(BannerAd bannerAd) loaded,
    required TResult Function(AdvertisingFailures failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BannerAd bannerAd)? loaded,
    TResult? Function(AdvertisingFailures failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(AdvertisingFailures failure)? failure,
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
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdvertisingState {
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
    extends _$AdvertisingStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AdvertisingState.loading()';
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
    required TResult Function(BannerAd bannerAd) loaded,
    required TResult Function(AdvertisingFailures failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BannerAd bannerAd)? loaded,
    TResult? Function(AdvertisingFailures failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(AdvertisingFailures failure)? failure,
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
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AdvertisingState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BannerAd bannerAd});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AdvertisingStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerAd = null,
  }) {
    return _then(_$LoadedImpl(
      null == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.bannerAd);

  @override
  final BannerAd bannerAd;

  @override
  String toString() {
    return 'AdvertisingState.loaded(bannerAd: $bannerAd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bannerAd);

  /// Create a copy of AdvertisingState
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
    required TResult Function(BannerAd bannerAd) loaded,
    required TResult Function(AdvertisingFailures failure) failure,
  }) {
    return loaded(bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BannerAd bannerAd)? loaded,
    TResult? Function(AdvertisingFailures failure)? failure,
  }) {
    return loaded?.call(bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(AdvertisingFailures failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bannerAd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AdvertisingState {
  const factory _Loaded(final BannerAd bannerAd) = _$LoadedImpl;

  BannerAd get bannerAd;

  /// Create a copy of AdvertisingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AdvertisingFailures failure});

  $AdvertisingFailuresCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AdvertisingStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AdvertisingFailures,
    ));
  }

  /// Create a copy of AdvertisingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdvertisingFailuresCopyWith<$Res> get failure {
    return $AdvertisingFailuresCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.failure);

  @override
  final AdvertisingFailures failure;

  @override
  String toString() {
    return 'AdvertisingState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of AdvertisingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BannerAd bannerAd) loaded,
    required TResult Function(AdvertisingFailures failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BannerAd bannerAd)? loaded,
    TResult? Function(AdvertisingFailures failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(AdvertisingFailures failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AdvertisingState {
  const factory _Failure(final AdvertisingFailures failure) = _$FailureImpl;

  AdvertisingFailures get failure;

  /// Create a copy of AdvertisingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
