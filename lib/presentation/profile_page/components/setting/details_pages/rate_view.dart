import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:allservice/presentation/profile_page/components/setting/setting_part.dart';
import 'package:allservice/presentation/profile_page/components/text_comp.dart';
import 'package:flutter/material.dart';

class RateView extends StatelessWidget {
  const RateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void showBottomSheet(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Təşəkkür edirik',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Fikirləriniz önəmlidir',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 16.0),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingPart(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      backgroundColor: AppColor.btnColor,
                      padding: const EdgeInsets.symmetric(horizontal: 10)),
                  child: const Text(
                    'Tənzimləmələrə keç',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: CustomAppbar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                    fontsize: 24,
                    fontWeight: FontWeight.w600,
                    text: 'Qiymətləndirmə'),
                const SizedBox(
                  height: 25,
                ),
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: rateLists.length,
                  itemBuilder: (context, index) {
                    final indexData = rateLists[index];
                    return ListTile(
                      onTap: () {
                        showBottomSheet(context);
                      },
                      leading: const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      title: Text(indexData.text),
                      trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RateModel {
  final String text;

  RateModel({required this.text});
}

List<RateModel> rateLists = [
  RateModel(text: "All Serv-i  çox bəyəndim"),
  RateModel(text: 'All Serv-i  bəyəndim'),
  RateModel(text: 'All Serv daha yaxşı ola bilərdi'),
  RateModel(text: 'All Serv-i  elədə bəyənmədim'),
  RateModel(text: 'All Serv-i  bəyənmədim')
];
