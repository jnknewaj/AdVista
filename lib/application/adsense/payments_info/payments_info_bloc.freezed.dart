// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentsInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestedBalance,
    required TResult Function() requestedPaymentsInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestedBalance,
    TResult? Function()? requestedPaymentsInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestedBalance,
    TResult Function()? requestedPaymentsInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestedBalance value) requestedBalance,
    required TResult Function(_RequestedPaymentsInfo value)
        requestedPaymentsInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestedBalance value)? requestedBalance,
    TResult? Function(_RequestedPaymentsInfo value)? requestedPaymentsInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestedBalance value)? requestedBalance,
    TResult Function(_RequestedPaymentsInfo value)? requestedPaymentsInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsInfoEventCopyWith<$Res> {
  factory $PaymentsInfoEventCopyWith(
          PaymentsInfoEvent value, $Res Function(PaymentsInfoEvent) then) =
      _$PaymentsInfoEventCopyWithImpl<$Res, PaymentsInfoEvent>;
}

/// @nodoc
class _$PaymentsInfoEventCopyWithImpl<$Res, $Val extends PaymentsInfoEvent>
    implements $PaymentsInfoEventCopyWith<$Res> {
  _$PaymentsInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentsInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RequestedBalanceImplCopyWith<$Res> {
  factory _$$RequestedBalanceImplCopyWith(_$RequestedBalanceImpl value,
          $Res Function(_$RequestedBalanceImpl) then) =
      __$$RequestedBalanceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestedBalanceImplCopyWithImpl<$Res>
    extends _$PaymentsInfoEventCopyWithImpl<$Res, _$RequestedBalanceImpl>
    implements _$$RequestedBalanceImplCopyWith<$Res> {
  __$$RequestedBalanceImplCopyWithImpl(_$RequestedBalanceImpl _value,
      $Res Function(_$RequestedBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestedBalanceImpl implements _RequestedBalance {
  const _$RequestedBalanceImpl();

  @override
  String toString() {
    return 'PaymentsInfoEvent.requestedBalance()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestedBalanceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestedBalance,
    required TResult Function() requestedPaymentsInfo,
  }) {
    return requestedBalance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestedBalance,
    TResult? Function()? requestedPaymentsInfo,
  }) {
    return requestedBalance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestedBalance,
    TResult Function()? requestedPaymentsInfo,
    required TResult orElse(),
  }) {
    if (requestedBalance != null) {
      return requestedBalance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestedBalance value) requestedBalance,
    required TResult Function(_RequestedPaymentsInfo value)
        requestedPaymentsInfo,
  }) {
    return requestedBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestedBalance value)? requestedBalance,
    TResult? Function(_RequestedPaymentsInfo value)? requestedPaymentsInfo,
  }) {
    return requestedBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestedBalance value)? requestedBalance,
    TResult Function(_RequestedPaymentsInfo value)? requestedPaymentsInfo,
    required TResult orElse(),
  }) {
    if (requestedBalance != null) {
      return requestedBalance(this);
    }
    return orElse();
  }
}

abstract class _RequestedBalance implements PaymentsInfoEvent {
  const factory _RequestedBalance() = _$RequestedBalanceImpl;
}

/// @nodoc
abstract class _$$RequestedPaymentsInfoImplCopyWith<$Res> {
  factory _$$RequestedPaymentsInfoImplCopyWith(
          _$RequestedPaymentsInfoImpl value,
          $Res Function(_$RequestedPaymentsInfoImpl) then) =
      __$$RequestedPaymentsInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestedPaymentsInfoImplCopyWithImpl<$Res>
    extends _$PaymentsInfoEventCopyWithImpl<$Res, _$RequestedPaymentsInfoImpl>
    implements _$$RequestedPaymentsInfoImplCopyWith<$Res> {
  __$$RequestedPaymentsInfoImplCopyWithImpl(_$RequestedPaymentsInfoImpl _value,
      $Res Function(_$RequestedPaymentsInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestedPaymentsInfoImpl implements _RequestedPaymentsInfo {
  const _$RequestedPaymentsInfoImpl();

  @override
  String toString() {
    return 'PaymentsInfoEvent.requestedPaymentsInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestedPaymentsInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestedBalance,
    required TResult Function() requestedPaymentsInfo,
  }) {
    return requestedPaymentsInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestedBalance,
    TResult? Function()? requestedPaymentsInfo,
  }) {
    return requestedPaymentsInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestedBalance,
    TResult Function()? requestedPaymentsInfo,
    required TResult orElse(),
  }) {
    if (requestedPaymentsInfo != null) {
      return requestedPaymentsInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestedBalance value) requestedBalance,
    required TResult Function(_RequestedPaymentsInfo value)
        requestedPaymentsInfo,
  }) {
    return requestedPaymentsInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestedBalance value)? requestedBalance,
    TResult? Function(_RequestedPaymentsInfo value)? requestedPaymentsInfo,
  }) {
    return requestedPaymentsInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestedBalance value)? requestedBalance,
    TResult Function(_RequestedPaymentsInfo value)? requestedPaymentsInfo,
    required TResult orElse(),
  }) {
    if (requestedPaymentsInfo != null) {
      return requestedPaymentsInfo(this);
    }
    return orElse();
  }
}

abstract class _RequestedPaymentsInfo implements PaymentsInfoEvent {
  const factory _RequestedPaymentsInfo() = _$RequestedPaymentsInfoImpl;
}

/// @nodoc
mixin _$PaymentsInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Payments payments) loadedBalance,
    required TResult Function(List<Payments> infoList) loadedPaymentsInfo,
    required TResult Function(PaymentsFailures failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Payments payments)? loadedBalance,
    TResult? Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult? Function(PaymentsFailures failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Payments payments)? loadedBalance,
    TResult Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult Function(PaymentsFailures failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedBalance value) loadedBalance,
    required TResult Function(_LoadedPaymentsInfo value) loadedPaymentsInfo,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedBalance value)? loadedBalance,
    TResult? Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedBalance value)? loadedBalance,
    TResult Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsInfoStateCopyWith<$Res> {
  factory $PaymentsInfoStateCopyWith(
          PaymentsInfoState value, $Res Function(PaymentsInfoState) then) =
      _$PaymentsInfoStateCopyWithImpl<$Res, PaymentsInfoState>;
}

/// @nodoc
class _$PaymentsInfoStateCopyWithImpl<$Res, $Val extends PaymentsInfoState>
    implements $PaymentsInfoStateCopyWith<$Res> {
  _$PaymentsInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentsInfoState
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
    extends _$PaymentsInfoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PaymentsInfoState.initial()';
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
    required TResult Function(Payments payments) loadedBalance,
    required TResult Function(List<Payments> infoList) loadedPaymentsInfo,
    required TResult Function(PaymentsFailures failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Payments payments)? loadedBalance,
    TResult? Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult? Function(PaymentsFailures failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Payments payments)? loadedBalance,
    TResult Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult Function(PaymentsFailures failure)? failure,
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
    required TResult Function(_LoadedBalance value) loadedBalance,
    required TResult Function(_LoadedPaymentsInfo value) loadedPaymentsInfo,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedBalance value)? loadedBalance,
    TResult? Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedBalance value)? loadedBalance,
    TResult Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentsInfoState {
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
    extends _$PaymentsInfoStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PaymentsInfoState.loading()';
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
    required TResult Function(Payments payments) loadedBalance,
    required TResult Function(List<Payments> infoList) loadedPaymentsInfo,
    required TResult Function(PaymentsFailures failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Payments payments)? loadedBalance,
    TResult? Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult? Function(PaymentsFailures failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Payments payments)? loadedBalance,
    TResult Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult Function(PaymentsFailures failure)? failure,
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
    required TResult Function(_LoadedBalance value) loadedBalance,
    required TResult Function(_LoadedPaymentsInfo value) loadedPaymentsInfo,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedBalance value)? loadedBalance,
    TResult? Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedBalance value)? loadedBalance,
    TResult Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PaymentsInfoState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedBalanceImplCopyWith<$Res> {
  factory _$$LoadedBalanceImplCopyWith(
          _$LoadedBalanceImpl value, $Res Function(_$LoadedBalanceImpl) then) =
      __$$LoadedBalanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Payments payments});

  $PaymentsCopyWith<$Res> get payments;
}

/// @nodoc
class __$$LoadedBalanceImplCopyWithImpl<$Res>
    extends _$PaymentsInfoStateCopyWithImpl<$Res, _$LoadedBalanceImpl>
    implements _$$LoadedBalanceImplCopyWith<$Res> {
  __$$LoadedBalanceImplCopyWithImpl(
      _$LoadedBalanceImpl _value, $Res Function(_$LoadedBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = null,
  }) {
    return _then(_$LoadedBalanceImpl(
      null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as Payments,
    ));
  }

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentsCopyWith<$Res> get payments {
    return $PaymentsCopyWith<$Res>(_value.payments, (value) {
      return _then(_value.copyWith(payments: value));
    });
  }
}

/// @nodoc

class _$LoadedBalanceImpl implements _LoadedBalance {
  const _$LoadedBalanceImpl(this.payments);

  @override
  final Payments payments;

  @override
  String toString() {
    return 'PaymentsInfoState.loadedBalance(payments: $payments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedBalanceImpl &&
            (identical(other.payments, payments) ||
                other.payments == payments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payments);

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedBalanceImplCopyWith<_$LoadedBalanceImpl> get copyWith =>
      __$$LoadedBalanceImplCopyWithImpl<_$LoadedBalanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Payments payments) loadedBalance,
    required TResult Function(List<Payments> infoList) loadedPaymentsInfo,
    required TResult Function(PaymentsFailures failure) failure,
  }) {
    return loadedBalance(payments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Payments payments)? loadedBalance,
    TResult? Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult? Function(PaymentsFailures failure)? failure,
  }) {
    return loadedBalance?.call(payments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Payments payments)? loadedBalance,
    TResult Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult Function(PaymentsFailures failure)? failure,
    required TResult orElse(),
  }) {
    if (loadedBalance != null) {
      return loadedBalance(payments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedBalance value) loadedBalance,
    required TResult Function(_LoadedPaymentsInfo value) loadedPaymentsInfo,
    required TResult Function(_Failure value) failure,
  }) {
    return loadedBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedBalance value)? loadedBalance,
    TResult? Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadedBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedBalance value)? loadedBalance,
    TResult Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadedBalance != null) {
      return loadedBalance(this);
    }
    return orElse();
  }
}

abstract class _LoadedBalance implements PaymentsInfoState {
  const factory _LoadedBalance(final Payments payments) = _$LoadedBalanceImpl;

  Payments get payments;

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedBalanceImplCopyWith<_$LoadedBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedPaymentsInfoImplCopyWith<$Res> {
  factory _$$LoadedPaymentsInfoImplCopyWith(_$LoadedPaymentsInfoImpl value,
          $Res Function(_$LoadedPaymentsInfoImpl) then) =
      __$$LoadedPaymentsInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Payments> infoList});
}

/// @nodoc
class __$$LoadedPaymentsInfoImplCopyWithImpl<$Res>
    extends _$PaymentsInfoStateCopyWithImpl<$Res, _$LoadedPaymentsInfoImpl>
    implements _$$LoadedPaymentsInfoImplCopyWith<$Res> {
  __$$LoadedPaymentsInfoImplCopyWithImpl(_$LoadedPaymentsInfoImpl _value,
      $Res Function(_$LoadedPaymentsInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? infoList = null,
  }) {
    return _then(_$LoadedPaymentsInfoImpl(
      null == infoList
          ? _value._infoList
          : infoList // ignore: cast_nullable_to_non_nullable
              as List<Payments>,
    ));
  }
}

/// @nodoc

class _$LoadedPaymentsInfoImpl implements _LoadedPaymentsInfo {
  const _$LoadedPaymentsInfoImpl(final List<Payments> infoList)
      : _infoList = infoList;

  final List<Payments> _infoList;
  @override
  List<Payments> get infoList {
    if (_infoList is EqualUnmodifiableListView) return _infoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infoList);
  }

  @override
  String toString() {
    return 'PaymentsInfoState.loadedPaymentsInfo(infoList: $infoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedPaymentsInfoImpl &&
            const DeepCollectionEquality().equals(other._infoList, _infoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_infoList));

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedPaymentsInfoImplCopyWith<_$LoadedPaymentsInfoImpl> get copyWith =>
      __$$LoadedPaymentsInfoImplCopyWithImpl<_$LoadedPaymentsInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Payments payments) loadedBalance,
    required TResult Function(List<Payments> infoList) loadedPaymentsInfo,
    required TResult Function(PaymentsFailures failure) failure,
  }) {
    return loadedPaymentsInfo(infoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Payments payments)? loadedBalance,
    TResult? Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult? Function(PaymentsFailures failure)? failure,
  }) {
    return loadedPaymentsInfo?.call(infoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Payments payments)? loadedBalance,
    TResult Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult Function(PaymentsFailures failure)? failure,
    required TResult orElse(),
  }) {
    if (loadedPaymentsInfo != null) {
      return loadedPaymentsInfo(infoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedBalance value) loadedBalance,
    required TResult Function(_LoadedPaymentsInfo value) loadedPaymentsInfo,
    required TResult Function(_Failure value) failure,
  }) {
    return loadedPaymentsInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedBalance value)? loadedBalance,
    TResult? Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadedPaymentsInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedBalance value)? loadedBalance,
    TResult Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadedPaymentsInfo != null) {
      return loadedPaymentsInfo(this);
    }
    return orElse();
  }
}

abstract class _LoadedPaymentsInfo implements PaymentsInfoState {
  const factory _LoadedPaymentsInfo(final List<Payments> infoList) =
      _$LoadedPaymentsInfoImpl;

  List<Payments> get infoList;

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedPaymentsInfoImplCopyWith<_$LoadedPaymentsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentsFailures failure});

  $PaymentsFailuresCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$PaymentsInfoStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsInfoState
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
              as PaymentsFailures,
    ));
  }

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentsFailuresCopyWith<$Res> get failure {
    return $PaymentsFailuresCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.failure);

  @override
  final PaymentsFailures failure;

  @override
  String toString() {
    return 'PaymentsInfoState.failure(failure: $failure)';
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

  /// Create a copy of PaymentsInfoState
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
    required TResult Function(Payments payments) loadedBalance,
    required TResult Function(List<Payments> infoList) loadedPaymentsInfo,
    required TResult Function(PaymentsFailures failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Payments payments)? loadedBalance,
    TResult? Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult? Function(PaymentsFailures failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Payments payments)? loadedBalance,
    TResult Function(List<Payments> infoList)? loadedPaymentsInfo,
    TResult Function(PaymentsFailures failure)? failure,
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
    required TResult Function(_LoadedBalance value) loadedBalance,
    required TResult Function(_LoadedPaymentsInfo value) loadedPaymentsInfo,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedBalance value)? loadedBalance,
    TResult? Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedBalance value)? loadedBalance,
    TResult Function(_LoadedPaymentsInfo value)? loadedPaymentsInfo,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements PaymentsInfoState {
  const factory _Failure(final PaymentsFailures failure) = _$FailureImpl;

  PaymentsFailures get failure;

  /// Create a copy of PaymentsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
