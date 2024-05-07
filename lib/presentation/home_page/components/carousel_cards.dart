import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselCards extends StatelessWidget {
  const CarouselCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: CarouselSlider.builder(
        itemCount: 4,
        itemBuilder: (context, index, realIndex) {
          return Expanded(
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(0),
                        child: Image.asset('assets/images/card_img.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Expanded(
                          child: Text(
                            "Kristal Abşeron-da yaz endirimləri başladı...!",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: AppColor.btnColor,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
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
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal),
      ),
    );
  }
}
