import 'package:flutter/material.dart';

class ItemSelectableHorizontalList extends StatelessWidget {
  final List<Widget> children;
  final ValueChanged<int> onItemSelected;
  final int? selectedIndex;
  final double itemHeight;
  final double itemWidth;

  const ItemSelectableHorizontalList({
    super.key,
    required this.children,
    required this.onItemSelected,
    this.selectedIndex,
    this.itemHeight = 60.0,
    this.itemWidth = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: children.length,
        itemBuilder: (context, index) {
          final child = children[index];

          return GestureDetector(
            onTap: () => onItemSelected(index),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedIndex == index ? Colors.blue : Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }
}
