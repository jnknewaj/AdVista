// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metrics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Metricsdto _$MetricsdtoFromJson(Map<String, dynamic> json) {
  return _Metricsdto.fromJson(json);
}

/// @nodoc
mixin _$Metricsdto {
  double get earnings => throw _privateConstructorUsedError;
  int get impression => throw _privateConstructorUsedError;
  int get requests => throw _privateConstructorUsedError;
  double get matchRate => throw _privateConstructorUsedError;
  int get clicks => throw _privateConstructorUsedError;
  double get eCPM => throw _privateConstructorUsedError;
  double get showRate => throw _privateConstructorUsedError;
  double get cTR => throw _privateConstructorUsedError;

  /// Serializes this Metricsdto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Metricsdto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetricsdtoCopyWith<Metricsdto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricsdtoCopyWith<$Res> {
  factory $MetricsdtoCopyWith(
          Metricsdto value, $Res Function(Metricsdto) then) =
      _$MetricsdtoCopyWithImpl<$Res, Metricsdto>;
  @useResult
  $Res call(
      {double earnings,
      int impression,
      int requests,
      double matchRate,
      int clicks,
      double eCPM,
      double showRate,
      double cTR});
}

/// @nodoc
class _$MetricsdtoCopyWithImpl<$Res, $Val extends Metricsdto>
    implements $MetricsdtoCopyWith<$Res> {
  _$MetricsdtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Metricsdto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnings = null,
    Object? impression = null,
    Object? requests = null,
    Object? matchRate = null,
    Object? clicks = null,
    Object? eCPM = null,
    Object? showRate = null,
    Object? cTR = null,
  }) {
    return _then(_value.copyWith(
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as double,
      impression: null == impression
          ? _value.impression
          : impression // ignore: cast_nullable_to_non_nullable
              as int,
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as int,
      matchRate: null == matchRate
          ? _value.matchRate
          : matchRate // ignore: cast_nullable_to_non_nullable
              as double,
      clicks: null == clicks
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as int,
      eCPM: null == eCPM
          ? _value.eCPM
          : eCPM // ignore: cast_nullable_to_non_nullable
              as double,
      showRate: null == showRate
          ? _value.showRate
          : showRate // ignore: cast_nullable_to_non_nullable
              as double,
      cTR: null == cTR
          ? _value.cTR
          : cTR // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetricsdtoImplCopyWith<$Res>
    implements $MetricsdtoCopyWith<$Res> {
  factory _$$MetricsdtoImplCopyWith(
          _$MetricsdtoImpl value, $Res Function(_$MetricsdtoImpl) then) =
      __$$MetricsdtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double earnings,
      int impression,
      int requests,
      double matchRate,
      int clicks,
      double eCPM,
      double showRate,
      double cTR});
}

/// @nodoc
class __$$MetricsdtoImplCopyWithImpl<$Res>
    extends _$MetricsdtoCopyWithImpl<$Res, _$MetricsdtoImpl>
    implements _$$MetricsdtoImplCopyWith<$Res> {
  __$$MetricsdtoImplCopyWithImpl(
      _$MetricsdtoImpl _value, $Res Function(_$MetricsdtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Metricsdto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnings = null,
    Object? impression = null,
    Object? requests = null,
    Object? matchRate = null,
    Object? clicks = null,
    Object? eCPM = null,
    Object? showRate = null,
    Object? cTR = null,
  }) {
    return _then(_$MetricsdtoImpl(
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as double,
      impression: null == impression
          ? _value.impression
          : impression // ignore: cast_nullable_to_non_nullable
              as int,
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as int,
      matchRate: null == matchRate
          ? _value.matchRate
          : matchRate // ignore: cast_nullable_to_non_nullable
              as double,
      clicks: null == clicks
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as int,
      eCPM: null == eCPM
          ? _value.eCPM
          : eCPM // ignore: cast_nullable_to_non_nullable
              as double,
      showRate: null == showRate
          ? _value.showRate
          : showRate // ignore: cast_nullable_to_non_nullable
              as double,
      cTR: null == cTR
          ? _value.cTR
          : cTR // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetricsdtoImpl extends _Metricsdto with DiagnosticableTreeMixin {
  const _$MetricsdtoImpl(
      {required this.earnings,
      required this.impression,
      required this.requests,
      required this.matchRate,
      required this.clicks,
      required this.eCPM,
      required this.showRate,
      required this.cTR})
      : super._();

  factory _$MetricsdtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetricsdtoImplFromJson(json);

  @override
  final double earnings;
  @override
  final int impression;
  @override
  final int requests;
  @override
  final double matchRate;
  @override
  final int clicks;
  @override
  final double eCPM;
  @override
  final double showRate;
  @override
  final double cTR;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Metricsdto(earnings: $earnings, impression: $impression, requests: $requests, matchRate: $matchRate, clicks: $clicks, eCPM: $eCPM, showRate: $showRate, cTR: $cTR)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Metricsdto'))
      ..add(DiagnosticsProperty('earnings', earnings))
      ..add(DiagnosticsProperty('impression', impression))
      ..add(DiagnosticsProperty('requests', requests))
      ..add(DiagnosticsProperty('matchRate', matchRate))
      ..add(DiagnosticsProperty('clicks', clicks))
      ..add(DiagnosticsProperty('eCPM', eCPM))
      ..add(DiagnosticsProperty('showRate', showRate))
      ..add(DiagnosticsProperty('cTR', cTR));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetricsdtoImpl &&
            (identical(other.earnings, earnings) ||
                other.earnings == earnings) &&
            (identical(other.impression, impression) ||
                other.impression == impression) &&
            (identical(other.requests, requests) ||
                other.requests == requests) &&
            (identical(other.matchRate, matchRate) ||
                other.matchRate == matchRate) &&
            (identical(other.clicks, clicks) || other.clicks == clicks) &&
            (identical(other.eCPM, eCPM) || other.eCPM == eCPM) &&
            (identical(other.showRate, showRate) ||
                other.showRate == showRate) &&
            (identical(other.cTR, cTR) || other.cTR == cTR));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, earnings, impression, requests,
      matchRate, clicks, eCPM, showRate, cTR);

  /// Create a copy of Metricsdto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetricsdtoImplCopyWith<_$MetricsdtoImpl> get copyWith =>
      __$$MetricsdtoImplCopyWithImpl<_$MetricsdtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetricsdtoImplToJson(
      this,
    );
  }
}

abstract class _Metricsdto extends Metricsdto {
  const factory _Metricsdto(
      {required final double earnings,
      required final int impression,
      required final int requests,
      required final double matchRate,
      required final int clicks,
      required final double eCPM,
      required final double showRate,
      required final double cTR}) = _$MetricsdtoImpl;
  const _Metricsdto._() : super._();

  factory _Metricsdto.fromJson(Map<String, dynamic> json) =
      _$MetricsdtoImpl.fromJson;

  @override
  double get earnings;
  @override
  int get impression;
  @override
  int get requests;
  @override
  double get matchRate;
  @override
  int get clicks;
  @override
  double get eCPM;
  @override
  double get showRate;
  @override
  double get cTR;

  /// Create a copy of Metricsdto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetricsdtoImplCopyWith<_$MetricsdtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
