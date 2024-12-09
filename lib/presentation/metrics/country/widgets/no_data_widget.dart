import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';

class BillBoard extends StatelessWidget {
  final String? text;
  const BillBoard({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: screenHeightPortion(context, 0.2),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade400,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.grey.shade50,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.grey.shade600,
                size: 40,
              ),
              const SizedBox(height: 8),
              Text(
                text ?? 'No Data Available For The Time Range',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
