import 'package:flutter/material.dart';

extension CustomTextTheme on TextTheme {
  TextStyle selectedClipTextStyle(BuildContext context) {
    return const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  TextStyle unselectedClipTextStyle(BuildContext context) {
    return const TextStyle();
  }
}

extension CustomTheme on ThemeData {
  Color get inactiveBorderColor => Colors.grey[350]!;
}
