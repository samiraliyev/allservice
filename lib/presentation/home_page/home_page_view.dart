import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 250,
                child: CarouselSlider.builder(
                    itemCount: 4,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                          height: 100,
                          width: 100,
                          child:
                              SvgPicture.asset('assets/images/card_img.svg'));
                    },
                    options: CarouselOptions(
                        height: 240,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 1000),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
