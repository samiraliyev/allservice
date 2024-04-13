import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/Constants/font/text_font.dart';
import 'package:allservice/Constants/path/app_path.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppbar({super.key, this.title});
  Widget? leading;
  List<Widget>? actions;
  final String? title;
  bool? centerTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Salam ",
                  style:
                      AppFonts.pacifico(size: 18, fontWeight: FontWeight.w500)),
              TextSpan(
                  text: "Sərdar",
                  style: AppFonts.pacifico(
                      color: AppColor.btnColor,
                      size: 18,
                      fontWeight: FontWeight.w500))
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppPath.logo,
                width: 28,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Yer",
                      style: AppFonts.pacifico(
                          size: 18, fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: " : Baku",
                      style: AppFonts.pacifico(
                          color: AppColor.btnColor,
                          size: 18,
                          fontWeight: FontWeight.w500))
                ]),
              ),
            ],
          )
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  size: 30,
                )),
            Positioned(
                right: 14,
                top: 13,
                child: Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                ))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        CircleAvatar(
          child: ClipOval(
            child: Image.asset(AppPath.logo),
          ),
        )
      ],
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
