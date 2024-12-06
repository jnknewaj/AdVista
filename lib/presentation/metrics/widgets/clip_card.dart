import 'package:advista/main.dart';
import 'package:advista/utils/styles/theme.dart';
import 'package:flutter/material.dart';

class ClipCard extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final bool isActive;

  const ClipCard({
    super.key,
    required this.text,
    this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: isActive ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isActive
                ? Theme.of(context).primaryColor
                : Theme.of(context).inactiveBorderColor,
            width: 1.5,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: isActive
                ? Theme.of(context).textTheme.selectedClipTextStyle(context)
                : Theme.of(context).textTheme.unselectedClipTextStyle(context),
          ),
        ),
      ),
    );
  }
}
