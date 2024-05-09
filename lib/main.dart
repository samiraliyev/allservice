import 'package:allservice/Constants/Colors/app_colors.dart';
import 'package:allservice/presentation/home_page/home_page_view.dart';
import 'package:allservice/presentation/listing_page/listing_view.dart';
import 'package:allservice/presentation/profile_page/profile_view.dart';
import 'package:allservice/presentation/reserv_page/reserv_page_view.dart';
import 'package:allservice/presentation/search_page/search_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentPageIndex = 0;
  final List<Widget> _pages = [
    const HomePageView(),
    const SearchView(),
    const ListingView(),
    const ReservPageView(),
    const ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[currentPageIndex], // Burada sayfa içeriğini gösteriyoruz
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Əsas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Axdarış',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Kategoriya',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_outlined),
              label: 'Rezerv',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profil',
            ),
          ],
          currentIndex: currentPageIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
