import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/Constants/Strings/app_strings.dart';
import 'package:allservice/Extensions/size_extension.dart';
import 'package:allservice/presentation/notification_view/widget/notification_card.dart';
import 'package:flutter/material.dart';

import '../../Widgets/custom_appbar.dart';

class NotificatonPageView extends StatelessWidget {
  const NotificatonPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: LocAppBarCustom(),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 23.0,
        ),
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              AppString.notificationPageTitle,
              style: TextStyle(
                color: AppColor.btnColor,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
          ),
          21.h,
          const Text(
            AppString.notificationCount,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
          const NotificationCard(),
        ],
      ),
    );
  }
}
