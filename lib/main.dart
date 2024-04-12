import 'package:flutter/material.dart';

import 'presentation/sign_in_sign_up_page/sign_in_sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboard Page',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      home: const SignInSignUpPage(),
    );
  }
}
