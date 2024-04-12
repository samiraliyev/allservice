import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Models/onboard_model.dart';
import '../presentation/home_page/home_page_view.dart';
import '../presentation/onboard_page/Widgets/page_control_buttons.dart';

class ControlButton extends StatefulWidget {
  const ControlButton({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<ControlButton> createState() => _ControlButtonState();
}

class _ControlButtonState extends State<ControlButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PageControlButtons(
          onTap: () async {
            if (!isLastPage) {
              widget.pageController.jumpToPage(currentIndex + 1);
              setState(() {});
              return;
            }

            final SharedPreferences preferences =
                await SharedPreferences.getInstance();
            await preferences.setBool('onboard', true).then((v) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePageView(),
                ),
              );
            });
          },
          icon: isLastPage ? Icons.check : Icons.arrow_forward_ios_rounded,
        ),
      ],
    );
  }

  int get currentIndex => widget.pageController.page?.toInt() ?? 0;

  bool get isLastPage => currentIndex == OnboardModel.onboardModel.length - 1;
}
