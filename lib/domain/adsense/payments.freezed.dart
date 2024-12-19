// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Payments {
  String get name => throw _privateConstructorUsedError;
  String? get payment => throw _privateConstructorUsedError;
  PaymentType get type => throw _privateConstructorUsedError;

  /// Create a copy of Payments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentsCopyWith<Payments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsCopyWith<$Res> {
  factory $PaymentsCopyWith(Payments value, $Res Function(Payments) then) =
      _$PaymentsCopyWithImpl<$Res, Payments>;
  @useResult
  $Res call({String name, String? payment, PaymentType type});
}

/// @nodoc
class _$PaymentsCopyWithImpl<$Res, $Val extends Payments>
    implements $PaymentsCopyWith<$Res> {
  _$PaymentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? payment = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaymentType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentsImplCopyWith<$Res>
    implements $PaymentsCopyWith<$Res> {
  factory _$$PaymentsImplCopyWith(
          _$PaymentsImpl value, $Res Function(_$PaymentsImpl) then) =
      __$$PaymentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? payment, PaymentType type});
}

/// @nodoc
class __$$PaymentsImplCopyWithImpl<$Res>
    extends _$PaymentsCopyWithImpl<$Res, _$PaymentsImpl>
    implements _$$PaymentsImplCopyWith<$Res> {
  __$$PaymentsImplCopyWithImpl(
      _$PaymentsImpl _value, $Res Function(_$PaymentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? payment = freezed,
    Object? type = null,
  }) {
    return _then(_$PaymentsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaymentType,
    ));
  }
}

/// @nodoc

class _$PaymentsImpl with DiagnosticableTreeMixin implements _Payments {
  const _$PaymentsImpl(
      {required this.name, required this.payment, required this.type});

  @override
  final String name;
  @override
  final String? payment;
  @override
  final PaymentType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Payments(name: $name, payment: $payment, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Payments'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('payment', payment))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, payment, type);

  /// Create a copy of Payments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsImplCopyWith<_$PaymentsImpl> get copyWith =>
      __$$PaymentsImplCopyWithImpl<_$PaymentsImpl>(this, _$identity);
}

abstract class _Payments implements Payments {
  const factory _Payments(
      {required final String name,
      required final String? payment,
      required final PaymentType type}) = _$PaymentsImpl;

  @override
  String get name;
  @override
  String? get payment;
  @override
  PaymentType get type;

  /// Create a copy of Payments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentsImplCopyWith<_$PaymentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
