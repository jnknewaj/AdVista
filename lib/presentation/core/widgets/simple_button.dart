import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  /// Range between :  0.00 to 1.00
  final double? width;

  /// Default color : [Cyan]
  final Color? borderColor;

  /// Default [Cyan] in light theme
  /// Background color of the button, reverse if fill is true
  final Color? primaryColor;

  /// Default [transparent] in light theme
  /// Foreground color of the button, reverse if fill is true
  final Color? secondaryColor;
  final String text;
  final Function() onPressed;

  /// Primary intention is to show loading indcator instead of text.
  /// Default value is [false]. Set [true] if such widget is needed.
  final bool hasChild;

  /// A flag to reverse backgroundColor and foregroundColor
  /// default is true
  final bool fill;

  const SimpleButton({
    super.key,
    this.width,
    this.borderColor,
    this.primaryColor,
    this.secondaryColor,
    required this.text,
    required this.onPressed,
    this.hasChild = false,
    this.fill = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * (width ?? 0.8),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: borderColor ?? Colors.cyan),
          foregroundColor: fill ? secondaryColor : primaryColor,
          backgroundColor: fill ? primaryColor : secondaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
        child: hasChild
            ? const SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(),
              )
            : Text(text),
      ),
    );
  }
}
