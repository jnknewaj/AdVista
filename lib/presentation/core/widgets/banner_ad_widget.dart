import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdWidget extends StatelessWidget {
  final BannerAd bannerAd;

  /// default is 95
  final double? height;

  const BannerAdWidget({
    super.key,
    required this.bannerAd,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: height ?? bannerAd.size.height.toDouble(),
      child: AdWidget(ad: bannerAd),
    );
  }
}
