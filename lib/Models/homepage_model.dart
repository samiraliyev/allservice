// Home page cards model

import 'package:flutter/material.dart';

class HomePageCardModel {
  final String title;
  final String image;

  HomePageCardModel({required this.title, required this.image});
}

List<HomePageCardModel> cardList = [
  HomePageCardModel(
      title: "Kristal Abşeron-da yaz endirimləri başladı...!",
      image: 'assets/images/ic_card1.png'),
  HomePageCardModel(
      title: "Kristal Abşeron-da yaz endirimləri başladı...!",
      image: 'assets/images/ic_card1.png'),
  HomePageCardModel(
      title: "Kristal Abşeron-da yaz endirimləri başladı...!",
      image: 'assets/images/ic_card1.png'),
  HomePageCardModel(
      title: "Kristal Abşeron-da yaz endirimləri başladı...!",
      image: 'assets/images/ic_card1.png'),
  HomePageCardModel(
      title: "Kristal Abşeron-da yaz endirimləri başladı...!",
      image: 'assets/images/ic_card1.png'),
  HomePageCardModel(
      title: "Kristal Abşeron-da yaz endirimləri başladı...!",
      image: 'assets/images/ic_card1.png'),
  HomePageCardModel(
      title: "Kristal Abşeron-da yaz endirimləri başladı...!",
      image: 'assets/images/ic_card1.png'),
];

// Home page category icons model

class HomepageIconsModel {
  final IconData icon;

  HomepageIconsModel({required this.icon});
}

List<HomepageIconsModel> homeIconsList = [
  HomepageIconsModel(icon: Icons.maps_home_work_outlined),
  HomepageIconsModel(icon: Icons.shopping_cart_rounded),
  HomepageIconsModel(icon: Icons.cleaning_services),
  HomepageIconsModel(icon: Icons.car_crash_outlined),
  HomepageIconsModel(icon: Icons.cut),
  HomepageIconsModel(icon: Icons.sports),
  HomepageIconsModel(icon: Icons.home),
];

//Home page category homeclean

class HomepageCleanModel {
  final String image;

  HomepageCleanModel({required this.image});
}

List<HomepageCleanModel> homePageCleanList = [
  HomepageCleanModel(image: "assets/images/homeclean1.png"),
  HomepageCleanModel(image: "assets/images/homeclean2.png"),
  HomepageCleanModel(image: "assets/images/homeclean3.png"),
];
