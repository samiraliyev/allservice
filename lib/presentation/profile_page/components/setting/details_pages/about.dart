import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 100,
                    ),
                    Text(
                      "All Serv",
                      style: TextStyle(
                          fontSize: 28,
                          color: AppColor.btnColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    "Lorem ipsum dolor lestquam. Quisque a ligula nulla. Morbi urna diam, rutrum et posuere ut, faucibus placerat nulla. Vivamus ut ullamcorper nibh. Duis a lorem lectus.Pellentesque at congue ante, congue malesuada sem. Morbi libero diam, tempus eget finibus at, efficitur congue nisl. Pellentesque cursus turpis ac commodo volutpat. In pharetra sit amet ipsum ut consequat. In nec turpis et magna placerat pellentesque. Pellentesque turpis tellus, mattis eget dolor a, volutpat venenatis ligula. Integer iaculis ipsum sed velit venenatis commodo. Aenean vehicula dapibus ex, at ultricies lorem mollis nec. Ut efficitur rhoncus augue, sed vehicula nibh pretium vitae. Sed sed libero massa. Donec dignissim egestas enim, eget condimentum metus posuere vel. Donec et turpis diam. Nunc non lacus dolor."),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
