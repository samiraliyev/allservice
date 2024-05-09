import 'package:allservice/presentation/home_page/home_page_view.dart';
import 'package:allservice/presentation/listing_page/listing_view.dart';
import 'package:allservice/presentation/profile_page/profile_view.dart';
import 'package:allservice/presentation/search_page/search_view.dart';
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
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        // colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.grey[200],
          elevation: 0,
          backgroundColor: Colors.white,
          animationDuration: const Duration(milliseconds: 1500),
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(icon: Icon(Icons.home), label: 'Əsas'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Axtar'),
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
          const SearchView(),
          const ListingView(),
          const HomePageView(),
          const ProfileView(),

          ///
        ][currentPageIndex],
      ),
    );
  }
}
