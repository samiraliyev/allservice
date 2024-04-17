import 'package:allservice/Extensions/size_extension.dart';
import 'package:allservice/presentation/sign_up_page/sign_up_page_view.dart';
import 'package:flutter/material.dart';
import '../../Constants/Colors/app_colors.dart';
import '../../Constants/Strings/app_strings.dart';
import '../../Models/onboard_model.dart';
import '../login_page/login_page_view.dart';

class OnboardPageView extends StatefulWidget {
  const OnboardPageView({
    super.key,
    required this.pageController,
    required this.currentPage,
  });

  final PageController pageController;
  final int currentPage;

  @override
  State<OnboardPageView> createState() => _OnboardPageViewState();
}

class _OnboardPageViewState extends State<OnboardPageView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final items = OnboardModel.onboardModel;
    return Scaffold(
      body: PageView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return buildOnboardingPage(items[index], index);
        },
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );

    // DotsIndicator(
    //   dotsCount: items.length,
    //   position: currentIndex,
    //   decorator: const DotsDecorator(
    //     color: Colors.grey, // İşarələrin default rəngi
    //     activeColor: Colors.blue, // Seçilmiş işarələrin rəngi
    //   ),
    // );
  }

  Widget buildOnboardingPage(OnboardModel page, int index) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    30.h,
                    Text(
                      page.title,
                      style: const TextStyle(
                        color: AppColor.titleColor,
                        fontSize: 24,
                        fontFamily: "Poppins",
                      ),
                    ),
                    30.h,
                    Text(
                      page.description,
                      style: const TextStyle(
                        color: AppColor.titleColor,
                        fontSize: 18,
                        fontFamily: "Poppins",
                      ),
                    ),
                    50.h,
                    if (index == 2) ...[
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPageView(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff42a1fa),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text(
                              AppString.registerBtnText,
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      20.h,
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginPageView(),
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff42a1fa),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: const Text(
                                AppString.loginBtnText,
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const Positioned(
                bottom: 30.0,
                child: Expanded(
                  child: Text(AppString.confirmCondition,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w900,
                        color: AppColor.titleColor,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
