import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:allservice/presentation/profile_page/components/text_comp.dart';
import 'package:flutter/material.dart';

class SupportView extends StatelessWidget {
  const SupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                      fontsize: 24,
                      fontWeight: FontWeight.w600,
                      text: 'Bizimlə Əlaqə'),
                  const SizedBox(
                    height: 25,
                  ),
                  TextField(
                    maxLines: 5, // Birden fazla satıra izin verir
                    decoration: InputDecoration(
                      filled: true,
                      hintStyle: const TextStyle(color: Colors.white),
                      fillColor: AppColor.btnColor,
                      hintText: 'Mesaj...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.btnColor,
                        ),
                        padding:
                            const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Göndər",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.telegram,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.location_pin,
                      size: 35,
                      color: AppColor.btnColor,
                    ),
                    title: Text(
                      "Ünvan",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Cəfər Cabbarlı küç 42 ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 35,
                      color: AppColor.btnColor,
                    ),
                    title: Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "info@AllServ.az",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 35,
                      color: AppColor.btnColor,
                    ),
                    title: Text(
                      "Telefon",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "545BC6",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
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
