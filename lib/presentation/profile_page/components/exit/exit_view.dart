import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:allservice/constants/colors/app_colors.dart';
import 'package:allservice/presentation/profile_page/components/cards.dart';
import 'package:allservice/presentation/profile_page/components/setting/setting_part.dart';
import 'package:allservice/presentation/profile_page/components/text_comp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExitView extends StatelessWidget {
  const ExitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(backgroundColor: Colors.white),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Pp
                  CircleAvatar(
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
                      fontsize: 25, fontWeight: FontWeight.bold, text: 'Çıxış'),
                  const SizedBox(
                    height: 20,
                  ),

                  ProfilePageCard(
                    text: "Çıxış et",
                    leading: Icons.last_page_rounded,
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ProfilePageCard(
                      text: "Geriyə qayıt",
                      leading: Icons.flip_to_back_sharp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
