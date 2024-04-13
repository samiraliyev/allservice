import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselCards extends StatelessWidget {
  const CarouselCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: CarouselSlider.builder(
          itemCount: 4,
          itemBuilder: (context, index, realIndex) {
            return Container(
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset('assets/images/card_img.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Kristal Abşeron-da yaz endirimləri başladı...!",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: AppColor.btnColor,
                              fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
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
    );
  }
}
