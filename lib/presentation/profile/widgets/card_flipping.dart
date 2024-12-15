import 'package:advista/presentation/profile/widgets/card_structure.dart';
import 'package:flutter/material.dart';

class CardFlipping extends StatelessWidget {
  const CardFlipping({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return CardStructure(
        theme: theme,
        icon: Icons.monetization_on_outlined,
        title: "Total Earnings",
        subtitle: "Loading...");
  }
}
