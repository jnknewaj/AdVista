// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_unit_metrics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdUnitMetricsDto _$AdUnitMetricsDtoFromJson(Map<String, dynamic> json) {
  return _AdUnitMetricsDto.fromJson(json);
}

/// @nodoc
mixin _$AdUnitMetricsDto {
  String get adUnitId => throw _privateConstructorUsedError;
  String get adUnitType => throw _privateConstructorUsedError;
  Metricsdto get metrics => throw _privateConstructorUsedError;

  /// Serializes this AdUnitMetricsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdUnitMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdUnitMetricsDtoCopyWith<AdUnitMetricsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdUnitMetricsDtoCopyWith<$Res> {
  factory $AdUnitMetricsDtoCopyWith(
          AdUnitMetricsDto value, $Res Function(AdUnitMetricsDto) then) =
      _$AdUnitMetricsDtoCopyWithImpl<$Res, AdUnitMetricsDto>;
  @useResult
  $Res call({String adUnitId, String adUnitType, Metricsdto metrics});

  $MetricsdtoCopyWith<$Res> get metrics;
}

/// @nodoc
class _$AdUnitMetricsDtoCopyWithImpl<$Res, $Val extends AdUnitMetricsDto>
    implements $AdUnitMetricsDtoCopyWith<$Res> {
  _$AdUnitMetricsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdUnitMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = null,
    Object? adUnitType = null,
    Object? metrics = null,
  }) {
    return _then(_value.copyWith(
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitType: null == adUnitType
          ? _value.adUnitType
          : adUnitType // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metricsdto,
    ) as $Val);
  }

  /// Create a copy of AdUnitMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetricsdtoCopyWith<$Res> get metrics {
    return $MetricsdtoCopyWith<$Res>(_value.metrics, (value) {
      return _then(_value.copyWith(metrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdUnitMetricsDtoImplCopyWith<$Res>
    implements $AdUnitMetricsDtoCopyWith<$Res> {
  factory _$$AdUnitMetricsDtoImplCopyWith(_$AdUnitMetricsDtoImpl value,
          $Res Function(_$AdUnitMetricsDtoImpl) then) =
      __$$AdUnitMetricsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String adUnitId, String adUnitType, Metricsdto metrics});

  @override
  $MetricsdtoCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$AdUnitMetricsDtoImplCopyWithImpl<$Res>
    extends _$AdUnitMetricsDtoCopyWithImpl<$Res, _$AdUnitMetricsDtoImpl>
    implements _$$AdUnitMetricsDtoImplCopyWith<$Res> {
  __$$AdUnitMetricsDtoImplCopyWithImpl(_$AdUnitMetricsDtoImpl _value,
      $Res Function(_$AdUnitMetricsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdUnitMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = null,
    Object? adUnitType = null,
    Object? metrics = null,
  }) {
    return _then(_$AdUnitMetricsDtoImpl(
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitType: null == adUnitType
          ? _value.adUnitType
          : adUnitType // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metricsdto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdUnitMetricsDtoImpl extends _AdUnitMetricsDto {
  const _$AdUnitMetricsDtoImpl(
      {required this.adUnitId, required this.adUnitType, required this.metrics})
      : super._();

  factory _$AdUnitMetricsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdUnitMetricsDtoImplFromJson(json);

  @override
  final String adUnitId;
  @override
  final String adUnitType;
  @override
  final Metricsdto metrics;

  @override
  String toString() {
    return 'AdUnitMetricsDto(adUnitId: $adUnitId, adUnitType: $adUnitType, metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdUnitMetricsDtoImpl &&
            (identical(other.adUnitId, adUnitId) ||
                other.adUnitId == adUnitId) &&
            (identical(other.adUnitType, adUnitType) ||
                other.adUnitType == adUnitType) &&
            (identical(other.metrics, metrics) || other.metrics == metrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adUnitId, adUnitType, metrics);

  /// Create a copy of AdUnitMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdUnitMetricsDtoImplCopyWith<_$AdUnitMetricsDtoImpl> get copyWith =>
      __$$AdUnitMetricsDtoImplCopyWithImpl<_$AdUnitMetricsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdUnitMetricsDtoImplToJson(
      this,
    );
  }
}

abstract class _AdUnitMetricsDto extends AdUnitMetricsDto {
  const factory _AdUnitMetricsDto(
      {required final String adUnitId,
      required final String adUnitType,
      required final Metricsdto metrics}) = _$AdUnitMetricsDtoImpl;
  const _AdUnitMetricsDto._() : super._();

  factory _AdUnitMetricsDto.fromJson(Map<String, dynamic> json) =
      _$AdUnitMetricsDtoImpl.fromJson;

  @override
  String get adUnitId;
  @override
  String get adUnitType;
  @override
  Metricsdto get metrics;

  /// Create a copy of AdUnitMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdUnitMetricsDtoImplCopyWith<_$AdUnitMetricsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
