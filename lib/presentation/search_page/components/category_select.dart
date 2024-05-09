import 'package:allservice/Models/categories_models.dart';
import 'package:allservice/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CategorySelect extends StatefulWidget {
  const CategorySelect({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CategorySelectState createState() => _CategorySelectState();
}

class _CategorySelectState extends State<CategorySelect> {
  String? selectedCategory;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: false,
        itemCount: categoriesBannerList.length,
        itemBuilder: (context, index) {
          final CategoriesModelsFilter categoryIndex =
              categoriesBannerList[index];
          return Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = categoryIndex.title;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey),
                      color: categoryIndex.title == selectedCategory
                          ? AppColor.btnColor
                          : Colors.white),
                  child: Text(
                    categoryIndex.title,
                    style: TextStyle(
                        color: categoryIndex.title == selectedCategory
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
