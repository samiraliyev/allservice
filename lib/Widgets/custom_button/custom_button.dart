import 'package:flutter/material.dart';

import '../../../constants/colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final double width;
  final Color? bgColor;
  final Color? textColor;
  final double? height;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
    this.height,
    this.bgColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            foregroundColor: AppColor.titleColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            )),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
