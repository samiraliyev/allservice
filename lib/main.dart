import 'package:allservice/Widgets/custom_appbar.dart';
import 'package:allservice/constants/colors/app_colors.dart';
import 'package:allservice/presentation/home_page/home_page_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboard Page',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
        // colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 1500),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: AppColor.btnColor,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: 'Əsas'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Axdar'),
          NavigationDestination(
              icon: Icon(Icons.category), label: 'Kateqoriya'),
          NavigationDestination(
              icon: Icon(Icons.watch_later_outlined), label: 'Rezerv'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
      body: <Widget>[
        /// Home page
        const HomePageView(),
        const HomePageView(),
        const HomePageView(),
        const HomePageView(),
        const HomePageView(),

        ///
      ][currentPageIndex],
    );
  }
}
