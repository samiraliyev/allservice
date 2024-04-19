import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:allservice/presentation/profile_page/components/cards.dart';
import 'package:allservice/presentation/profile_page/components/setting/details_pages/about.dart';
import 'package:allservice/presentation/profile_page/components/setting/details_pages/rate_view.dart';
import 'package:allservice/presentation/profile_page/components/setting/details_pages/support_view.dart';
import 'package:allservice/presentation/profile_page/components/text_comp.dart';
import 'package:flutter/material.dart';

class SettingPart extends StatelessWidget {
  const SettingPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(backgroundColor: Colors.white),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextWidget(
                      fontsize: 25,
                      fontWeight: FontWeight.bold,
                      text: 'Tənzimləmələr'),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 0.4,
                              color: Colors.grey,
                              offset: Offset(0.5, 0.8),
                              spreadRadius: 0.5)
                        ]),
                    child: const Column(
                      children: [
                        SettingsCards(
                            text: "Bildirişlər", leading: Icons.notifications),
                        SettingsCards(
                            text: "Səslər",
                            leading: Icons.record_voice_over_rounded),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 0.4,
                              color: Colors.grey,
                              offset: Offset(0.5, 0.8),
                              spreadRadius: 0.5)
                        ]),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RateView(),
                                ));
                          },
                          child: const ProfilePageCard(
                              text: "All Serv-i  qiymətləndirin",
                              leading: Icons.star),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AboutUsView(),
                                ));
                          },
                          child: const ProfilePageCard(
                              text: "Bizim haqqımızda",
                              leading: Icons.groups_rounded),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SupportView(),
                                ));
                          },
                          child: const ProfilePageCard(
                              text: "Dəstək", leading: Icons.help_rounded),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
