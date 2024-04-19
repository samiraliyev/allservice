import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  TextWidget({super.key, required this.fontsize, required this.fontWeight, required this.text});
  double fontsize;
  final String text;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColor.btnColor, fontSize: fontsize, fontWeight: fontWeight),
    );
  }
}
