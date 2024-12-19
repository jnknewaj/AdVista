import 'package:advista/domain/advertising/advertising_failures.dart';
import 'package:advista/domain/advertising/i_ad_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'interstial_event.dart';
part 'interstial_state.dart';
part 'interstial_bloc.freezed.dart';

@injectable
class InterstialBloc extends Bloc<InterstialEvent, InterstialState> {
  final IAdRepository _repository;
  InterstialBloc(this._repository) : super(const InterstialState.initial()) {
    on<InterstialEvent>(_onEvents);
  }

  Future<void> _onEvents(
    InterstialEvent event,
    Emitter<InterstialState> emit,
  ) async {
    await event.map(
      loadAd: (e) async {
        emit(const InterstialState.loading());
        try {
          await _repository.loadInterstitialAd();
          emit(const InterstialState.loaded());
        } catch (e) {
          emit(const InterstialState.failure(
              AdvertisingFailures.unknown('Failed To Load Interstial Ad')));
        }
      },
      showAd: (e) async {
        final result = _repository.showInterstitialAd();
        result.fold(
          (_) => emit(const InterstialState.failure(
              AdvertisingFailures.unknown('Failed To Load Interestitial Ad'))),
          (_) => emit(const InterstialState.shown()),
        );
      },
    );
  }
}
