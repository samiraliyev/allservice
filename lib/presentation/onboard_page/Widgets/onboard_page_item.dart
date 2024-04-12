import 'package:allservice/Extensions/size_extension.dart';
import 'package:flutter/material.dart';
import '../../../Constants/Colors/app_colors.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../../Models/onboard_model.dart';

class OnboardPageItem extends StatelessWidget {
  const OnboardPageItem({
    super.key,
    required this.onboardItems,
  });

  final OnboardModel onboardItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff777EF6),
              Color(0xff2E38D3),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: 300.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
              14.h,
              Positioned(
                top: 250.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      onboardItems.title,
                      style: const TextStyle(
                        color: AppColor.titleColor,
                        fontSize: 24,
                      ),
                    ),
                    30.h,
                    Text(
                      onboardItems.description,
                      style: const TextStyle(
                        color: AppColor.titleColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                bottom: 50.0,
                child: Text(
                  AppString.confirmCondition,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w900,
                    color: AppColor.titleColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
