// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metrics_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetricsSummaryDto _$MetricsSummaryDtoFromJson(Map<String, dynamic> json) {
  return _MetricsSummaryDto.fromJson(json);
}

/// @nodoc
mixin _$MetricsSummaryDto {
  @JsonKey(name: 'ESTIMATED_EARNINGS')
  double get totalEarnings => throw _privateConstructorUsedError;
  @JsonKey(name: 'IMPRESSIONS')
  int get totalImpression => throw _privateConstructorUsedError;
  @JsonKey(name: 'MATCHED_REQUESTS')
  int get totalRequests => throw _privateConstructorUsedError;
  @JsonKey(name: 'MATCH_RATE')
  double get overallMatchRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLICKS')
  int get totalClicks => throw _privateConstructorUsedError;
  double get overallECPM => throw _privateConstructorUsedError;
  double get overallShowRate => throw _privateConstructorUsedError;
  double get overallCTR => throw _privateConstructorUsedError;

  /// Serializes this MetricsSummaryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetricsSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetricsSummaryDtoCopyWith<MetricsSummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricsSummaryDtoCopyWith<$Res> {
  factory $MetricsSummaryDtoCopyWith(
          MetricsSummaryDto value, $Res Function(MetricsSummaryDto) then) =
      _$MetricsSummaryDtoCopyWithImpl<$Res, MetricsSummaryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ESTIMATED_EARNINGS') double totalEarnings,
      @JsonKey(name: 'IMPRESSIONS') int totalImpression,
      @JsonKey(name: 'MATCHED_REQUESTS') int totalRequests,
      @JsonKey(name: 'MATCH_RATE') double overallMatchRate,
      @JsonKey(name: 'CLICKS') int totalClicks,
      double overallECPM,
      double overallShowRate,
      double overallCTR});
}

/// @nodoc
class _$MetricsSummaryDtoCopyWithImpl<$Res, $Val extends MetricsSummaryDto>
    implements $MetricsSummaryDtoCopyWith<$Res> {
  _$MetricsSummaryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetricsSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEarnings = null,
    Object? totalImpression = null,
    Object? totalRequests = null,
    Object? overallMatchRate = null,
    Object? totalClicks = null,
    Object? overallECPM = null,
    Object? overallShowRate = null,
    Object? overallCTR = null,
  }) {
    return _then(_value.copyWith(
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      totalImpression: null == totalImpression
          ? _value.totalImpression
          : totalImpression // ignore: cast_nullable_to_non_nullable
              as int,
      totalRequests: null == totalRequests
          ? _value.totalRequests
          : totalRequests // ignore: cast_nullable_to_non_nullable
              as int,
      overallMatchRate: null == overallMatchRate
          ? _value.overallMatchRate
          : overallMatchRate // ignore: cast_nullable_to_non_nullable
              as double,
      totalClicks: null == totalClicks
          ? _value.totalClicks
          : totalClicks // ignore: cast_nullable_to_non_nullable
              as int,
      overallECPM: null == overallECPM
          ? _value.overallECPM
          : overallECPM // ignore: cast_nullable_to_non_nullable
              as double,
      overallShowRate: null == overallShowRate
          ? _value.overallShowRate
          : overallShowRate // ignore: cast_nullable_to_non_nullable
              as double,
      overallCTR: null == overallCTR
          ? _value.overallCTR
          : overallCTR // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetricsSummaryDtoImplCopyWith<$Res>
    implements $MetricsSummaryDtoCopyWith<$Res> {
  factory _$$MetricsSummaryDtoImplCopyWith(_$MetricsSummaryDtoImpl value,
          $Res Function(_$MetricsSummaryDtoImpl) then) =
      __$$MetricsSummaryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ESTIMATED_EARNINGS') double totalEarnings,
      @JsonKey(name: 'IMPRESSIONS') int totalImpression,
      @JsonKey(name: 'MATCHED_REQUESTS') int totalRequests,
      @JsonKey(name: 'MATCH_RATE') double overallMatchRate,
      @JsonKey(name: 'CLICKS') int totalClicks,
      double overallECPM,
      double overallShowRate,
      double overallCTR});
}

/// @nodoc
class __$$MetricsSummaryDtoImplCopyWithImpl<$Res>
    extends _$MetricsSummaryDtoCopyWithImpl<$Res, _$MetricsSummaryDtoImpl>
    implements _$$MetricsSummaryDtoImplCopyWith<$Res> {
  __$$MetricsSummaryDtoImplCopyWithImpl(_$MetricsSummaryDtoImpl _value,
      $Res Function(_$MetricsSummaryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEarnings = null,
    Object? totalImpression = null,
    Object? totalRequests = null,
    Object? overallMatchRate = null,
    Object? totalClicks = null,
    Object? overallECPM = null,
    Object? overallShowRate = null,
    Object? overallCTR = null,
  }) {
    return _then(_$MetricsSummaryDtoImpl(
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      totalImpression: null == totalImpression
          ? _value.totalImpression
          : totalImpression // ignore: cast_nullable_to_non_nullable
              as int,
      totalRequests: null == totalRequests
          ? _value.totalRequests
          : totalRequests // ignore: cast_nullable_to_non_nullable
              as int,
      overallMatchRate: null == overallMatchRate
          ? _value.overallMatchRate
          : overallMatchRate // ignore: cast_nullable_to_non_nullable
              as double,
      totalClicks: null == totalClicks
          ? _value.totalClicks
          : totalClicks // ignore: cast_nullable_to_non_nullable
              as int,
      overallECPM: null == overallECPM
          ? _value.overallECPM
          : overallECPM // ignore: cast_nullable_to_non_nullable
              as double,
      overallShowRate: null == overallShowRate
          ? _value.overallShowRate
          : overallShowRate // ignore: cast_nullable_to_non_nullable
              as double,
      overallCTR: null == overallCTR
          ? _value.overallCTR
          : overallCTR // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetricsSummaryDtoImpl extends _MetricsSummaryDto
    with DiagnosticableTreeMixin {
  const _$MetricsSummaryDtoImpl(
      {@JsonKey(name: 'ESTIMATED_EARNINGS') required this.totalEarnings,
      @JsonKey(name: 'IMPRESSIONS') required this.totalImpression,
      @JsonKey(name: 'MATCHED_REQUESTS') required this.totalRequests,
      @JsonKey(name: 'MATCH_RATE') required this.overallMatchRate,
      @JsonKey(name: 'CLICKS') required this.totalClicks,
      required this.overallECPM,
      required this.overallShowRate,
      required this.overallCTR})
      : super._();

  factory _$MetricsSummaryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetricsSummaryDtoImplFromJson(json);

  @override
  @JsonKey(name: 'ESTIMATED_EARNINGS')
  final double totalEarnings;
  @override
  @JsonKey(name: 'IMPRESSIONS')
  final int totalImpression;
  @override
  @JsonKey(name: 'MATCHED_REQUESTS')
  final int totalRequests;
  @override
  @JsonKey(name: 'MATCH_RATE')
  final double overallMatchRate;
  @override
  @JsonKey(name: 'CLICKS')
  final int totalClicks;
  @override
  final double overallECPM;
  @override
  final double overallShowRate;
  @override
  final double overallCTR;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MetricsSummaryDto(totalEarnings: $totalEarnings, totalImpression: $totalImpression, totalRequests: $totalRequests, overallMatchRate: $overallMatchRate, totalClicks: $totalClicks, overallECPM: $overallECPM, overallShowRate: $overallShowRate, overallCTR: $overallCTR)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MetricsSummaryDto'))
      ..add(DiagnosticsProperty('totalEarnings', totalEarnings))
      ..add(DiagnosticsProperty('totalImpression', totalImpression))
      ..add(DiagnosticsProperty('totalRequests', totalRequests))
      ..add(DiagnosticsProperty('overallMatchRate', overallMatchRate))
      ..add(DiagnosticsProperty('totalClicks', totalClicks))
      ..add(DiagnosticsProperty('overallECPM', overallECPM))
      ..add(DiagnosticsProperty('overallShowRate', overallShowRate))
      ..add(DiagnosticsProperty('overallCTR', overallCTR));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetricsSummaryDtoImpl &&
            (identical(other.totalEarnings, totalEarnings) ||
                other.totalEarnings == totalEarnings) &&
            (identical(other.totalImpression, totalImpression) ||
                other.totalImpression == totalImpression) &&
            (identical(other.totalRequests, totalRequests) ||
                other.totalRequests == totalRequests) &&
            (identical(other.overallMatchRate, overallMatchRate) ||
                other.overallMatchRate == overallMatchRate) &&
            (identical(other.totalClicks, totalClicks) ||
                other.totalClicks == totalClicks) &&
            (identical(other.overallECPM, overallECPM) ||
                other.overallECPM == overallECPM) &&
            (identical(other.overallShowRate, overallShowRate) ||
                other.overallShowRate == overallShowRate) &&
            (identical(other.overallCTR, overallCTR) ||
                other.overallCTR == overallCTR));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalEarnings,
      totalImpression,
      totalRequests,
      overallMatchRate,
      totalClicks,
      overallECPM,
      overallShowRate,
      overallCTR);

  /// Create a copy of MetricsSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetricsSummaryDtoImplCopyWith<_$MetricsSummaryDtoImpl> get copyWith =>
      __$$MetricsSummaryDtoImplCopyWithImpl<_$MetricsSummaryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetricsSummaryDtoImplToJson(
      this,
    );
  }
}

abstract class _MetricsSummaryDto extends MetricsSummaryDto {
  const factory _MetricsSummaryDto(
      {@JsonKey(name: 'ESTIMATED_EARNINGS') required final double totalEarnings,
      @JsonKey(name: 'IMPRESSIONS') required final int totalImpression,
      @JsonKey(name: 'MATCHED_REQUESTS') required final int totalRequests,
      @JsonKey(name: 'MATCH_RATE') required final double overallMatchRate,
      @JsonKey(name: 'CLICKS') required final int totalClicks,
      required final double overallECPM,
      required final double overallShowRate,
      required final double overallCTR}) = _$MetricsSummaryDtoImpl;
  const _MetricsSummaryDto._() : super._();

  factory _MetricsSummaryDto.fromJson(Map<String, dynamic> json) =
      _$MetricsSummaryDtoImpl.fromJson;

  @override
  @JsonKey(name: 'ESTIMATED_EARNINGS')
  double get totalEarnings;
  @override
  @JsonKey(name: 'IMPRESSIONS')
  int get totalImpression;
  @override
  @JsonKey(name: 'MATCHED_REQUESTS')
  int get totalRequests;
  @override
  @JsonKey(name: 'MATCH_RATE')
  double get overallMatchRate;
  @override
  @JsonKey(name: 'CLICKS')
  int get totalClicks;
  @override
  double get overallECPM;
  @override
  double get overallShowRate;
  @override
  double get overallCTR;

  /// Create a copy of MetricsSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetricsSummaryDtoImplCopyWith<_$MetricsSummaryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
