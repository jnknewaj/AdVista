import 'package:advista/utils/ad_strings.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

/**
 * On a temporary purpose for shoing Interestitial Ad
 * TODO Add Bloc and follow DDD
 */
class MyAdManager {
  InterstitialAd? _interstitialAd;
  bool _isAdLoaded = false;

  // Load the interstitial ad
  void loadAd() {
    InterstitialAd.load(
      adUnitId: AdString.interstitialAdIdDemo, // Test ad unit ID
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _isAdLoaded = true;
          print('Interstitial ad loaded');
        },
        onAdFailedToLoad: (error) {
          print('Interstitial ad failed to load: $error');
        },
      ),
    );
  }

  // Show the interstitial ad
  void showAd() {
    if (_isAdLoaded && _interstitialAd != null) {
      _interstitialAd!.show();
      _interstitialAd = null;
      loadAd(); // Load a new ad after showing
    }
  }
}
