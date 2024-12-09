// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String flag;
  final String country;
  final String value;
  const ListItem({
    super.key,
    required this.flag,
    required this.country,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Flag image
          Text(
            flag,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 12),
          // Country name
          Expanded(
            child: Text(
              country,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          // Value aligned to the right
          Text(
            value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
