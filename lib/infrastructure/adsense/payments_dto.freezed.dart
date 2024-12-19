// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentsDto _$PaymentsDtoFromJson(Map<String, dynamic> json) {
  return _PaymentsDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentsDto {
  String get name => throw _privateConstructorUsedError;
  String? get payment => throw _privateConstructorUsedError;

  /// Serializes this PaymentsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentsDtoCopyWith<PaymentsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsDtoCopyWith<$Res> {
  factory $PaymentsDtoCopyWith(
          PaymentsDto value, $Res Function(PaymentsDto) then) =
      _$PaymentsDtoCopyWithImpl<$Res, PaymentsDto>;
  @useResult
  $Res call({String name, String? payment});
}

/// @nodoc
class _$PaymentsDtoCopyWithImpl<$Res, $Val extends PaymentsDto>
    implements $PaymentsDtoCopyWith<$Res> {
  _$PaymentsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? payment = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentsDtoImplCopyWith<$Res>
    implements $PaymentsDtoCopyWith<$Res> {
  factory _$$PaymentsDtoImplCopyWith(
          _$PaymentsDtoImpl value, $Res Function(_$PaymentsDtoImpl) then) =
      __$$PaymentsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? payment});
}

/// @nodoc
class __$$PaymentsDtoImplCopyWithImpl<$Res>
    extends _$PaymentsDtoCopyWithImpl<$Res, _$PaymentsDtoImpl>
    implements _$$PaymentsDtoImplCopyWith<$Res> {
  __$$PaymentsDtoImplCopyWithImpl(
      _$PaymentsDtoImpl _value, $Res Function(_$PaymentsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? payment = freezed,
  }) {
    return _then(_$PaymentsDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentsDtoImpl extends _PaymentsDto with DiagnosticableTreeMixin {
  const _$PaymentsDtoImpl({required this.name, required this.payment})
      : super._();

  factory _$PaymentsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentsDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String? payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentsDto(name: $name, payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentsDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, payment);

  /// Create a copy of PaymentsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsDtoImplCopyWith<_$PaymentsDtoImpl> get copyWith =>
      __$$PaymentsDtoImplCopyWithImpl<_$PaymentsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentsDtoImplToJson(
      this,
    );
  }
}

abstract class _PaymentsDto extends PaymentsDto {
  const factory _PaymentsDto(
      {required final String name,
      required final String? payment}) = _$PaymentsDtoImpl;
  const _PaymentsDto._() : super._();

  factory _PaymentsDto.fromJson(Map<String, dynamic> json) =
      _$PaymentsDtoImpl.fromJson;

  @override
  String get name;
  @override
  String? get payment;

  /// Create a copy of PaymentsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentsDtoImplCopyWith<_$PaymentsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
