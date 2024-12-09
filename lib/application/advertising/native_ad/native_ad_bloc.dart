import 'dart:async';

import 'package:advista/domain/advertising/advertising_failures.dart';
import 'package:advista/domain/advertising/i_ad_repository.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:injectable/injectable.dart';

part 'native_ad_event.dart';
part 'native_ad_state.dart';
part 'native_ad_bloc.freezed.dart';

@injectable
class NativeAdBloc extends Bloc<NativeAdEvent, NativeAdState> {
  final IAdRepository _repository;
  NativeAdBloc(this._repository) : super(const NativeAdState.initial()) {
    on<NativeAdEvent>(_onEvents);
  }

  Future<void> _onEvents(
    NativeAdEvent event,
    Emitter<NativeAdState> emit,
  ) async {
    await event.map(
      started: (e) async {
        emit(const NativeAdState.loading());
        await _repository.showNativeAd(NativeAdListener(
          onAdLoaded: (ad) {
            cprint('NAT', 'Ad Loaded');
            add(NativeAdEvent.loadedEvent(ad as NativeAd));
          },
          onAdImpression: (ad) {
            cprint('NAT', 'Impression');
          },
          onAdFailedToLoad: (ad, error) {
            cprint('NAT', 'Failure');
            ad.dispose();
            add(NativeAdEvent.failedEvent(
                AdvertisingFailures.unknown(error.message)));
          },
        ));
      },
      loadedEvent: (e) {
        emit(NativeAdState.loaded(e.nativeAd));
      },
      failedEvent: (e) {
        emit(NativeAdState.failure(e.failure));
      },
    );
  }
}
