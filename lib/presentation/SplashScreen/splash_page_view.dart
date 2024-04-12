import 'package:flutter/material.dart';

import '../../Constants/Strings/app_strings.dart';
import '../../Constants/path/app_path.dart';
import '../onboard_page/onboard_page.dart';

class SplashPageView extends StatefulWidget {
  const SplashPageView({super.key});

  @override
  State<SplashPageView> createState() => _SplashPageViewState();
}

class _SplashPageViewState extends State<SplashPageView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).whenComplete(
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const OnboardPage()));
      },
    );
    super.initState();
  }

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
        child: Column(
          children: [
            Image.asset(AppPath.logo),
            const Text(
              AppString.weclcome,
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
