// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apps_metrics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppsMetricsDto _$AppsMetricsDtoFromJson(Map<String, dynamic> json) {
  return _AppsMetricsDto.fromJson(json);
}

/// @nodoc
mixin _$AppsMetricsDto {
  String get appValue => throw _privateConstructorUsedError; // app-id
  String get appDisplayLabel => throw _privateConstructorUsedError;
  Metricsdto get metrics => throw _privateConstructorUsedError;

  /// Serializes this AppsMetricsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppsMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppsMetricsDtoCopyWith<AppsMetricsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsMetricsDtoCopyWith<$Res> {
  factory $AppsMetricsDtoCopyWith(
          AppsMetricsDto value, $Res Function(AppsMetricsDto) then) =
      _$AppsMetricsDtoCopyWithImpl<$Res, AppsMetricsDto>;
  @useResult
  $Res call({String appValue, String appDisplayLabel, Metricsdto metrics});

  $MetricsdtoCopyWith<$Res> get metrics;
}

/// @nodoc
class _$AppsMetricsDtoCopyWithImpl<$Res, $Val extends AppsMetricsDto>
    implements $AppsMetricsDtoCopyWith<$Res> {
  _$AppsMetricsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppsMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appValue = null,
    Object? appDisplayLabel = null,
    Object? metrics = null,
  }) {
    return _then(_value.copyWith(
      appValue: null == appValue
          ? _value.appValue
          : appValue // ignore: cast_nullable_to_non_nullable
              as String,
      appDisplayLabel: null == appDisplayLabel
          ? _value.appDisplayLabel
          : appDisplayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metricsdto,
    ) as $Val);
  }

  /// Create a copy of AppsMetricsDto
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
abstract class _$$AppsMetricsDtoImplCopyWith<$Res>
    implements $AppsMetricsDtoCopyWith<$Res> {
  factory _$$AppsMetricsDtoImplCopyWith(_$AppsMetricsDtoImpl value,
          $Res Function(_$AppsMetricsDtoImpl) then) =
      __$$AppsMetricsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appValue, String appDisplayLabel, Metricsdto metrics});

  @override
  $MetricsdtoCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$AppsMetricsDtoImplCopyWithImpl<$Res>
    extends _$AppsMetricsDtoCopyWithImpl<$Res, _$AppsMetricsDtoImpl>
    implements _$$AppsMetricsDtoImplCopyWith<$Res> {
  __$$AppsMetricsDtoImplCopyWithImpl(
      _$AppsMetricsDtoImpl _value, $Res Function(_$AppsMetricsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appValue = null,
    Object? appDisplayLabel = null,
    Object? metrics = null,
  }) {
    return _then(_$AppsMetricsDtoImpl(
      appValue: null == appValue
          ? _value.appValue
          : appValue // ignore: cast_nullable_to_non_nullable
              as String,
      appDisplayLabel: null == appDisplayLabel
          ? _value.appDisplayLabel
          : appDisplayLabel // ignore: cast_nullable_to_non_nullable
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
class _$AppsMetricsDtoImpl extends _AppsMetricsDto
    with DiagnosticableTreeMixin {
  const _$AppsMetricsDtoImpl(
      {required this.appValue,
      required this.appDisplayLabel,
      required this.metrics})
      : super._();

  factory _$AppsMetricsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppsMetricsDtoImplFromJson(json);

  @override
  final String appValue;
// app-id
  @override
  final String appDisplayLabel;
  @override
  final Metricsdto metrics;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppsMetricsDto(appValue: $appValue, appDisplayLabel: $appDisplayLabel, metrics: $metrics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppsMetricsDto'))
      ..add(DiagnosticsProperty('appValue', appValue))
      ..add(DiagnosticsProperty('appDisplayLabel', appDisplayLabel))
      ..add(DiagnosticsProperty('metrics', metrics));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppsMetricsDtoImpl &&
            (identical(other.appValue, appValue) ||
                other.appValue == appValue) &&
            (identical(other.appDisplayLabel, appDisplayLabel) ||
                other.appDisplayLabel == appDisplayLabel) &&
            (identical(other.metrics, metrics) || other.metrics == metrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appValue, appDisplayLabel, metrics);

  /// Create a copy of AppsMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppsMetricsDtoImplCopyWith<_$AppsMetricsDtoImpl> get copyWith =>
      __$$AppsMetricsDtoImplCopyWithImpl<_$AppsMetricsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppsMetricsDtoImplToJson(
      this,
    );
  }
}

abstract class _AppsMetricsDto extends AppsMetricsDto {
  const factory _AppsMetricsDto(
      {required final String appValue,
      required final String appDisplayLabel,
      required final Metricsdto metrics}) = _$AppsMetricsDtoImpl;
  const _AppsMetricsDto._() : super._();

  factory _AppsMetricsDto.fromJson(Map<String, dynamic> json) =
      _$AppsMetricsDtoImpl.fromJson;

  @override
  String get appValue; // app-id
  @override
  String get appDisplayLabel;
  @override
  Metricsdto get metrics;

  /// Create a copy of AppsMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppsMetricsDtoImplCopyWith<_$AppsMetricsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
