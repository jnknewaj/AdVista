import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final double? width;
  final double? height;

  const AppIcon({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }
}
