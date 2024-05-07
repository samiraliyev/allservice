import 'package:allservice/Constants/Strings/app_strings.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title: Text(
          AppString.notificationCardTitle,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        subtitle: Text(
          AppString.notificationCardSubtitle,
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
