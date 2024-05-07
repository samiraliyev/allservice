import 'package:allservice/Extensions/size_extension.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../Constants/Colors/app_colors.dart';
import '../../Constants/Strings/app_strings.dart';
import '../../Constants/path/app_path.dart';
import '../login_page/login_page_view.dart';

class SignUpPageView extends StatefulWidget {
  const SignUpPageView({super.key});

  @override
  State<SignUpPageView> createState() => _SignUpPageViewState();
}

bool _obscureText = false;

class _SignUpPageViewState extends State<SignUpPageView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

  bool _verifyingPhoneNumber = false;

  Future<void> _validatePhoneNumber() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        _verifyingPhoneNumber = true;
      });
    }
  }

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
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: ListView(
            children: [
              SizedBox(
                  width: 90.0, height: 90.0, child: Image.asset(AppPath.logo)),
              Text(
                AppString.createAccountTitle.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Icon(Icons.image_search_rounded),
              15.h,
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      validator: (value) => EmailValidator.validate(value!)
                          ? null
                          : "Adınızı doğru daxil edin.",
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_2_outlined),
                        prefixIconColor: Colors.white,
                        hintText: AppString.fullName,
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
                    15.h,
                    // input for email
                    TextFormField(
                      validator: (value) => EmailValidator.validate(value!)
                          ? null
                          : "Emailinizi doğru daxil edin.",
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mail_outline),
                        prefixIconColor: Colors.white,
                        hintText: AppString.emailHintText,
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
                    15.h,
                    TextFormField(
                      textInputAction: TextInputAction.next,
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
                    10.h,
// for international phone input
                    IntlPhoneField(
                      autofocus: false,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        errorText: "Ölkəni yanlış seçdiniz",
                        labelText: 'Telefon',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      initialCountryCode: '+1',
                      onChanged: (phone) =>
                          _verifyingPhoneNumber ? null : _validatePhoneNumber,
                    ),
                  ],
                ),
              ),
              12.h,
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
                        trackOutlineWidth: const MaterialStatePropertyAll(6.0),
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
              15.h,
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
              15.h,
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
              15.h,
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
              12.h,
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
              4.h,
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
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
    );
  }
}
