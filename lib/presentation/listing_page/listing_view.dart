import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:allservice/presentation/home_page/components/body_component.dart';
import 'package:allservice/presentation/home_page/components/clean_home_component.dart';
import 'package:allservice/presentation/home_page/components/pretty_component.dart';
import 'package:allservice/presentation/home_page/components/sitter_component.dart';
import 'package:flutter/material.dart';

class ListingView extends StatelessWidget {
  const ListingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        backgroundColor: Colors.white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [titleAppBarCustom(), locAppBarCustom()],
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyAllComponent(),
              CleanHomeComponent(),
              PrettyAllComponent(),
              SitterHomeComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
