import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/Constants/font/text_font.dart';
import 'package:allservice/Constants/path/app_path.dart';
import 'package:allservice/presentation/notification_view/notificaton_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../presentation/map/map_view.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppbar({super.key, this.title, required this.backgroundColor});
  Widget? leading;
  List<Widget>? actions;
  final Widget? title;
  bool? centerTitle;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      excludeHeaderSemantics: false,
      forceMaterialTransparency: false,
      elevation: 0,
      backgroundColor: backgroundColor,
      shadowColor: Colors.white,
      surfaceTintColor: Colors.white,
      title: title,
      actions: [
        Stack(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificatonPageView(),
                      ));
                },
                icon: const Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: AppColor.btnColor,
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
                )),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            child: ClipOval(
              child: Image.asset(AppPath.logo),
            ),
          ),
        )
      ],
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

//Hello for user with his name [component]

// ignore: camel_case_types
class TitleAppBarCustom extends StatelessWidget {
  const TitleAppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "Salam ",
            style: AppFonts.pacifico(size: 18, fontWeight: FontWeight.w500)),
        TextSpan(
          text: "Sərdar",
          style: AppFonts.pacifico(
              color: AppColor.btnColor, size: 18, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}

//Localation helper for app bar
class LocAppBarCustom extends StatelessWidget {
  const LocAppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MapView(),
            ),
          ),
          child: Image.asset(
            AppPath.logo,
            width: 28,
          ),
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: "Yer",
              style: AppFonts.pacifico(size: 18, fontWeight: FontWeight.w500),
            ),
            TextSpan(
              text: " : Baku",
              style: AppFonts.pacifico(
                  color: AppColor.btnColor,
                  size: 18,
                  fontWeight: FontWeight.w500),
            ),
          ]),
        ),
      ],
    );
  }
}
