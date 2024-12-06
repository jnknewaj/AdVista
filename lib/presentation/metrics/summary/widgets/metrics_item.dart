import 'package:advista/utils/styles/theme.dart';
import 'package:flutter/material.dart';

class MetricsItem extends StatelessWidget {
  final String topText;
  final String bottomText;

  const MetricsItem({
    super.key,
    required this.topText,
    required this.bottomText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200], // Background color for the neumorphic effect
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(4, 4),
            blurRadius: 10,
          ),
          // Light shadow (top-left)
          BoxShadow(
            color: Colors.white, // Lighter shadow
            offset: Offset(-4, -4), // Position
            blurRadius: 10, // Blur intensity
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            topText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            bottomText,
            style: Theme.of(context).textTheme.cardSecondaryTextStyle(),
          ),
        ],
      ),
    );
  }
}
