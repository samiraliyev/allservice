import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/Constants/Strings/app_strings.dart';
import 'package:flutter/material.dart';

class SaveCard extends StatefulWidget {
  const SaveCard({super.key});

  @override
  State<SaveCard> createState() => _SaveCardState();
}

bool light = true;

class _SaveCardState extends State<SaveCard> {
  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.transparent;
        }

        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.transparent;
        }

        if (states.contains(MaterialState.disabled)) {
          return Colors.grey;
        }

        return null;
      },
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 0.5, color: AppColor.switchBtn)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              AppString.rememberMe,
              style: TextStyle(
                color: AppColor.titleColor,
                fontSize: 18.0,
              ),
            ),
            Switch(
              value: light,
              overlayColor: overlayColor,
              trackColor: trackColor,
              thumbColor: MaterialStatePropertyAll<Color>(AppColor.switchBtn),
              onChanged: (bool value) {
                setState(() {
                  light = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
