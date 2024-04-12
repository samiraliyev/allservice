import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Constants/Colors/app_colors.dart';
import '../presentation/home_page/home_page_view.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        final SharedPreferences preferences =
            await SharedPreferences.getInstance();
        await preferences
            .setBool('onboard', true)
            .then((_) => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePageView(),
                  ),
                ));
      },
      child: const Text(
        'Skip',
        style: TextStyle(
          color: AppColor.dotColor,
        ),
      ),
    );
  }
}
