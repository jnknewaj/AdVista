import 'package:advista/utils/app_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_unit_metrics_event.dart';
part 'ad_unit_metrics_state.dart';
part 'ad_unit_metrics_bloc.freezed.dart';

class AdUnitMetricsBloc extends Bloc<AdUnitMetricsEvent, AdUnitMetricsState> {
  AdUnitMetricsBloc() : super(_Initial()) {
    on<AdUnitMetricsEvent>((event, emit) {
      cprint('CTY', 'msg');
    });
  }
}
