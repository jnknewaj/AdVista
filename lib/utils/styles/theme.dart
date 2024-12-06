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

  TextStyle cardSecondaryTextStyle() {
    return const TextStyle(color: Colors.black54);
  }

  TextStyle listTileTrailingTextStyle() {
    return const TextStyle(fontSize: 20);
  }
}

extension CustomTheme on ThemeData {
  Color get inactiveBorderColor => Colors.grey[350]!;
}

extension CustomButtonTheme on ButtonThemeData {
  Color get secondaryColor => Colors.white;
}
