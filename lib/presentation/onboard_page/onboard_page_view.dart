import 'package:allservice/presentation/onboard_page/Widgets/onboard_page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../Models/onboard_model.dart';

class OnboardPageView extends StatefulWidget {
  const OnboardPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  State<OnboardPageView> createState() => _OnboardPageViewState();
}

class _OnboardPageViewState extends State<OnboardPageView> {
  @override
  Widget build(BuildContext context) {
    final items = OnboardModel.onboardModel;
    return Expanded(
      child: PageView.builder(
        controller: widget.pageController,
        itemCount: items.length,
        itemBuilder: (_, i) => OnboardPageItem(onboardItems: items[i]),
      ),
    );
  }
}
