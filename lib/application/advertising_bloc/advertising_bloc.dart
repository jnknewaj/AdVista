import 'package:advista/domain/advertising/advertising_failures.dart';
import 'package:advista/domain/advertising/i_ad_repository.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:injectable/injectable.dart';

part 'advertising_event.dart';
part 'advertising_state.dart';
part 'advertising_bloc.freezed.dart';

@injectable
class AdvertisingBloc extends Bloc<AdvertisingEvent, AdvertisingState> {
  final IAdRepository _repository;
  AdvertisingBloc(this._repository) : super(const AdvertisingState.initial()) {
    on<AdvertisingEvent>(_onEvents);
  }

  Future<void> _onEvents(
    AdvertisingEvent event,
    Emitter<AdvertisingState> emit,
  ) async {
    await event.map(
      bannerRequested: (e) async {
        cprint('CHK', 'bannerrequested');
        emit(const AdvertisingState.loading());
        await _repository.showBannerAd(
          BannerAdListener(onAdLoaded: (ad) {
            cprint('CHK', 'ad loaded');
            add(AdvertisingEvent.bannerAdLoaded(ad as BannerAd));
          }, onAdFailedToLoad: (a, e) {
            cprint('CHK', 'ad failed');
            a.dispose();
            add(const AdvertisingEvent.failed());
          }, onAdImpression: (ad) {
            cprint('CHK', 'imression');
          }),
        );
      },
      bannerAdLoaded: (e) async {
        emit(AdvertisingState.loaded(e.bannerAd));
      },
      failed: (e) async {
        emit(const AdvertisingState.failure(AdvertisingFailures.unknown()));
      },
    );
  }
}
