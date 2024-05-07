import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:allservice/presentation/home_page/components/carousel_cards.dart';
import 'package:allservice/presentation/home_page/components/category_icons.dart';
import 'package:allservice/presentation/home_page/components/clean_home_component.dart';
import 'package:allservice/presentation/home_page/components/sitter_component.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        backgroundColor: Colors.white,
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [TitleAppBarCustom(), LocAppBarCustom()],
        ),
      ),
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselCards(),
              SizedBox(
                height: 25,
              ),
              CategoryIcons(),
              SizedBox(
                height: 25,
              ),
              CleanHomeComponent(),
              SitterHomeComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
