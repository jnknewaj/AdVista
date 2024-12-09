import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

enum NativeAdSize { medium, large }

class NativeAdWidget extends StatelessWidget {
  final NativeAd nativeAd;
  final NativeAdSize size;

  const NativeAdWidget({super.key, required this.nativeAd, required this.size});

  @override
  Widget build(BuildContext context) {
    if (size == NativeAdSize.medium) {
      return ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 320,
          minHeight: 90,
          maxWidth: 400,
          maxHeight: 200,
        ),
        child: AdWidget(ad: nativeAd),
      );
    }

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 320,
        minHeight: 320,
        maxWidth: 400,
        maxHeight: 400,
      ),
      child: AdWidget(ad: nativeAd),
    );
  }
}
