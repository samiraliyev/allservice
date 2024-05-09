import 'package:allservice/Models/homepage_model.dart';
import 'package:flutter/material.dart';

class CategoryIcons extends StatelessWidget {
  const CategoryIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        itemCount: homeIconsList.length,
        itemBuilder: (context, index) {
          final HomepageIconsModel iconIndex = homeIconsList[index];
          return Container(
            child: Image.asset(
              iconIndex.icon,
              width: 50,
            ),
          );
        },
      ),
    );
  }
}
