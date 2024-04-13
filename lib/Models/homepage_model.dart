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
  final String icon;

  HomepageIconsModel({required this.icon});
}

List<HomepageIconsModel> homeIconsList = [
  HomepageIconsModel(icon: 'assets/images/icon1.png'),
  HomepageIconsModel(icon: 'assets/images/icon2.png'),
  HomepageIconsModel(icon: 'assets/images/icon3.png'),
  HomepageIconsModel(icon: 'assets/images/icon4.png'),
  HomepageIconsModel(icon: 'assets/images/icon5.png'),
  HomepageIconsModel(icon: 'assets/images/icon7.png'),
  HomepageIconsModel(icon: 'assets/images/icon8.png'),
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
