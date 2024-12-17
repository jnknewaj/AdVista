import 'package:flutter/material.dart';

class LegendItem {
  final String title;
  final Color color;
  final String percentage;

  LegendItem({
    required this.title,
    required this.color,
    required this.percentage,
  });
}

class LegendTile extends StatelessWidget {
  const LegendTile({required this.item});

  final LegendItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Container(width: 16, height: 20, color: item.color),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              '${item.title} (${item.percentage}%)',
              style: const TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
