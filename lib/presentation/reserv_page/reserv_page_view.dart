import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/Constants/Strings/app_strings.dart';
import 'package:allservice/Extensions/size_extension.dart';
import 'package:allservice/main.dart';
import 'package:allservice/presentation/profile_page/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:omni_datetime_picker/omni_datetime_picker.dart';

import '../../Widgets/custom_appbar.dart';
import '../../Widgets/custom_button/custom_button.dart';

class ReservPageView extends StatefulWidget {
  const ReservPageView({
    super.key,
  });

  @override
  State<ReservPageView> createState() => _ReservPageViewState();
}

class _ReservPageViewState extends State<ReservPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        backgroundColor: Colors.white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [TitleAppBarCustom(), LocAppBarCustom()],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          55.h,
          const Text(
            AppString.reservTitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          50.h,
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 1.0, color: Colors.grey),
                  fixedSize: const Size.fromWidth(double.infinity),
                  padding: const EdgeInsets.all(20.0),
                  backgroundColor: Colors.white),
              onPressed: () async {
                DateTime? dateTime = await showOmniDateTimePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate:
                      DateTime(1600).subtract(const Duration(days: 3652)),
                  lastDate: DateTime.now().add(
                    const Duration(days: 3652),
                  ),
                  is24HourMode: false,
                  isShowSeconds: false,
                  minutesInterval: 1,
                  secondsInterval: 1,
                  isForce2Digits: true,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  constraints: const BoxConstraints(
                    maxWidth: 350,
                    maxHeight: 650,
                  ),
                  transitionBuilder: (context, anim1, anim2, child) {
                    return FadeTransition(
                      opacity: anim1.drive(
                        Tween(
                          begin: 0,
                          end: 1,
                        ),
                      ),
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 200),
                  barrierDismissible: true,
                  selectableDayPredicate: (dateTime) {
                    if (dateTime == DateTime(2023, 2, 25)) {
                      return false;
                    } else {
                      return true;
                    }
                  },
                );
              },
              child: const Text(
                "Növbənizi təyin edin",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(59, 157, 157, 163),
                ),
              ),
            ),
          ),
          300.h,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10.0,
                      ),
                    ),
                  ),
                  child: Expanded(
                    child: CustomButton(
                      text: 'Növbəti',
                      textColor: AppColor.btnColor,
                      onPressed: () {},
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 50.0,
                    ),
                  ),
                ),
                50.w,
                Expanded(
                  child: CustomButton(
                    text: 'Evə xidmət',
                    textColor: AppColor.btnColor,
                    bgColor: Colors.white,
                    onPressed: () {},
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 50.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
