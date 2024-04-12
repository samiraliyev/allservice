import 'package:flutter/material.dart';

import '../../../Constants/Colors/app_colors.dart';

class PageControlButtons extends StatelessWidget {
  const PageControlButtons({
    super.key,
    required this.onTap,
    required this.icon,
  });
  final void Function() onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
          backgroundColor: Colors.blue, foregroundColor: AppColor.dotColor),
      onPressed: onTap,
      icon: Icon(
        icon,
      ),
    );
  }
}
