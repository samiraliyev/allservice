import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/Models/categories_models.dart';
import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:allservice/presentation/category_detail_page/detail_view.dart';
import 'package:allservice/presentation/search_page/components/categories_all.dart';
import 'package:allservice/presentation/search_page/components/search_field.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  String? selectedCategory;
  final String assetName = 'assets/svg/clean1.svg';
  // final Widget svg = SvgPicture.asset(
  //   'assets/svg/clean1.svg',
  //   height: 30,
  //   width: 30,
  //   allowDrawingOutsideViewBox: true,
  //   semanticsLabel: 'Acme logo',
  // );

  @override
  Widget build(BuildContext context) {
    List<CategoriesAllModel> filteredCategoriesList = selectedCategory != null
        ? categoriesAllList
            .where((item) => item.category == selectedCategory)
            .toList()
        : categoriesAllList;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        backgroundColor: Colors.white,
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleAppBarCustom(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
          return Container(
            padding: const EdgeInsets.all(13),
            child: Column(
              children: [
                const SearchField(),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
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
                                    color:
                                        categoryIndex.title == selectedCategory
                                            ? Colors.white
                                            : Colors.black),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: filteredCategoriesList.length,
                    itemBuilder: (context, index) {
                      final category = filteredCategoriesList[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 500),
                              reverseTransitionDuration:
                                  const Duration(milliseconds: 500),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      FadeTransition(
                                opacity: animation,
                                child:
                                    DetailView(categoryModelProduct: category),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    offset: const Offset(0, 3))
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    child: Image.asset(category.image),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Flexible(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            category.title,
                                            style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          category.subtitle,
                                          style: const TextStyle(
                                              color: Colors.grey),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow[700],
                                            ),
                                            Text("${category.raiting} | "),
                                            Text(category.degree)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
