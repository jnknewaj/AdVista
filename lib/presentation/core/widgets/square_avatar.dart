import 'package:flutter/material.dart';
import 'dart:math';

class SquareAvatar extends StatelessWidget {
  final double size;
  final String? imageUrl;
  final String? fallbackText;
  final Color? color;

  const SquareAvatar({
    required this.size,
    this.imageUrl,
    this.fallbackText,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: imageUrl == null ? color : null,
        borderRadius: BorderRadius.circular(8.0),
        image: imageUrl != null
            ? DecorationImage(
                image: NetworkImage(imageUrl!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: imageUrl == null && fallbackText != null
          ? Center(
              child: Text(
                fallbackText!.isNotEmpty ? fallbackText! : '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size * 0.4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
    );
  }
}
