import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:allservice/presentation/profile_page/components/cards.dart';
import 'package:allservice/presentation/profile_page/components/exit/exit_view.dart';
import 'package:allservice/presentation/profile_page/components/setting/setting_part.dart';
import 'package:allservice/presentation/profile_page/components/text_comp.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(backgroundColor: Colors.white),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/logo.png'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextWidget(
                      fontsize: 19,
                      fontWeight: FontWeight.bold,
                      text: 'Sərdar Mustafayev'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextWidget(
                      fontsize: 25,
                      fontWeight: FontWeight.bold,
                      text: 'Profil'),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProfilePageCard(
                    text: "Profil detayları",
                    leading: Icons.person,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingPart(),
                          ));
                    },
                    child: const ProfilePageCard(
                      text: "Tənzimləmələr",
                      leading: Icons.settings,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExitView(),
                          ));
                    },
                    child: const ProfilePageCard(
                      text: "Çıxış et",
                      leading: Icons.login,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
