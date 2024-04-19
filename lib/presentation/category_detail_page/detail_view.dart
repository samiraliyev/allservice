import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/Models/categories_models.dart';
import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:allservice/presentation/search_page/components/categories_all.dart';
import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  const DetailView({
    required this.categoryModelProduct,
    super.key,
  });
  final CategoriesAllModel categoryModelProduct;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  int currentPageIndex = 0;
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Stack(
          children: [
            Image.asset('assets/images/main_category.jpg'),
            CustomAppbar(
              backgroundColor: Colors.transparent,
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Choices categoies in category
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: categoryDetailList.length,
                  itemBuilder: (context, index) {
                    final CategoryDetailModel categoryIndex =
                        categoryDetailList[index];
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
                                border: Border.all()),
                            child: Text(
                              categoryIndex.title,
                              style: TextStyle(
                                  fontWeight:
                                      categoryIndex.title == selectedCategory
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.categoryModelProduct.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const ListTile(
                leading: Icon(Icons.share_location_rounded),
                title: Text("Sabuncu Rayonu"),
                trailing: Text("124 baxish"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Detallar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Biz nə təklif edirik",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                          ),
                          child: const Text("Crossfit"),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: AppColor.btnColor,
                ),
                title: Text("Email"),
                subtitle: Text("info@AllServ.az"),
              ),
              const ListTile(
                leading: Icon(
                  Icons.phone,
                  color: AppColor.btnColor,
                ),
                title: Text("Tel"),
                subtitle: Text("050-500-50-50"),
              ),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: AppColor.btnColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      "Rezerv et",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
