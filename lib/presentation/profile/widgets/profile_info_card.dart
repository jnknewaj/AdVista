import 'package:advista/presentation/profile/widgets/profile_info_row.dart';
import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  final String name;
  final String reportingTimeZone;
  final String currencyCode;
  final String accountOpeningDate;

  const ProfileInfoCard({
    super.key,
    required this.name,
    required this.reportingTimeZone,
    required this.currencyCode,
    required this.accountOpeningDate,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  "Profile Information",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
              const SizedBox(height: 16),
              ProfileInfoRow(
                icon: Icons.person,
                label: "Admob ID :",
                value: name,
              ),
              ProfileInfoRow(
                icon: Icons.access_time,
                label: "Time Zone :",
                value: reportingTimeZone,
              ),
              ProfileInfoRow(
                icon: Icons.attach_money,
                label: "Currency :",
                value: currencyCode,
              ),
              ProfileInfoRow(
                icon: Icons.calendar_today,
                label: "A/C Activated On :",
                value: accountOpeningDate,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
