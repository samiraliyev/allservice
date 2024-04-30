import 'package:allservice/Constants/Strings/app_strings.dart';
import 'package:allservice/Extensions/size_extension.dart';
import 'package:allservice/main.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../Constants/Colors/app_colors.dart';
import '../../Constants/path/app_path.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

bool _obscureText = false;

bool light = true;
bool validateStructure(String value) {
  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    // color for swith button
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.blue;
        }

        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        }

        if (states.contains(MaterialState.disabled)) {
          return Colors.grey;
        }

        return null;
      },
    );
    return SafeArea(
      child: Scaffold(
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
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset(AppPath.logo)),
                Text(
                  AppString.loginBtnText.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                20.h,
                const Text(
                  AppString.loginPageSubtitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                20.h,
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) => EmailValidator.validate(value!)
                            ? null
                            : "Email və ya ad düzgün deyil",
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person_2_outlined),
                          prefixIconColor: Colors.white,
                          hintText: AppString.emailHint,
                          hintStyle: const TextStyle(color: Colors.white),
                          labelStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      50.h,
                      TextFormField(
                        validator: (value) {
                          // add your custom validation here.
                          if (value!.isEmpty) {
                            return 'Şifrə düzgün deyil';
                          }
                          if (value.length < 8) {
                            return 'Şirfə ən az 8 simvol olmalıdır';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outlined),
                          prefixIconColor: Colors.white,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText == !_obscureText;
                              });
                            },
                            child: _obscureText
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                          ),
                          suffixIconColor: Colors.white,
                          hintText: AppString.passwordHint,
                          hintStyle: const TextStyle(color: Colors.white),
                          labelStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                12.h,
                const Text(
                  AppString.forgotPasswordText,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      AppString.rememberMe,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 30.0,
                      height: 25.0,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Switch(
                          value: light,
                          trackOutlineWidth:
                              const MaterialStatePropertyAll(6.0),
                          overlayColor: overlayColor,
                          trackColor: trackColor,
                          thumbColor: const MaterialStatePropertyAll<Color>(
                              AppColor.switchBtn),
                          onChanged: (bool value) {
                            setState(() {
                              light = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                20.h,
                // login btn start
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey[800],
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff42a1fa),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Text(
                      AppString.loginBtnText.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                30.h,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 2.0,
                      color: const Color.fromARGB(255, 211, 210, 210),
                    ),
                    const Text(AppString.or,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 2.0,
                      color: const Color.fromARGB(255, 211, 210, 210),
                    ),
                  ],
                ),
                41.h,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      width: 41.0,
                      height: 37.0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppPath.google),
                      ),
                    ),
                    41.w,
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      width: 41.0,
                      height: 37.0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppPath.facebook),
                      ),
                    ),
                    41.w,
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      width: 41.0,
                      height: 37.0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppPath.apple),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                17.h,
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      AppString.createAccontText,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                8.h,
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      // login without registered
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Main(),
                          ));
                    },
                    child: const Text(
                      AppString.withoutAccountText,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
