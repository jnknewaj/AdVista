import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CircularImageHolder extends StatelessWidget {
  final String? imageUrl;
  final double size;
  final String placeholderAsset;

  const CircularImageHolder({
    super.key,
    required this.imageUrl,
    this.size = 50.0,
    this.placeholderAsset = 'assets/icons/icon-android.png',
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? '',
        width: size,
        height: size,
        fit: BoxFit.cover,
        placeholder: (context, url) => Image.asset(
          placeholderAsset,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
        errorWidget: (context, url, error) => Image.asset(
          placeholderAsset,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
