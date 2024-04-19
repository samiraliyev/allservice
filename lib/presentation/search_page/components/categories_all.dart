class CategoriesAllModel {
  String image;
  String title;
  String subtitle;
  String raiting;
  String degree;
  String category;

  CategoriesAllModel(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.raiting,
      required this.degree,
      required this.category});
}

List<CategoriesAllModel> categoriesAllList = [
  CategoriesAllModel(
      image: 'assets/images/cleaner1.png',
      title: "Ev təmizliyi",
      subtitle: "Hər daim təmiz...",
      raiting: "5.7",
      degree: "Normal sirada",
      category: "Təmizlik"),
  CategoriesAllModel(
      image: 'assets/images/cleaner2.png',
      title: "Mebel təmizliyi",
      subtitle: "Parlaq mebellər...",
      raiting: "5.7",
      degree: "Normal sirada",
      category: "Təmizlik"),
  CategoriesAllModel(
      image: 'assets/images/cleaner3.png',
      title: "Xalça yuma",
      subtitle: "Xalçanız artıq parlaq...",
      raiting: "5.7",
      degree: "Normal sirada",
      category: "Təmizlik"),
  //Baxiciliq

  CategoriesAllModel(
      image: 'assets/images/sitter1.png',
      title: "Uşaq baxıcılığı",
      subtitle: "Uşaq baxıclığı",
      raiting: "6.7",
      degree: "Normal sirada",
      category: "Baxıcılıq"),
  CategoriesAllModel(
      image: 'assets/images/sitter2.png',
      title: "Yaşlı baxıcılığı",
      subtitle: "Yaşlı baxıclığı",
      raiting: "3.5",
      degree: "Normal sirada",
      category: "Baxıcılıq"),
  CategoriesAllModel(
      image: 'assets/images/sitter3.png',
      title: "Əlil baxıcılığı",
      subtitle: "Əlil baxıclığı",
      raiting: "10.0",
      degree: "Yuksek sirada",
      category: "Baxıcılıq"),

  //sport
  CategoriesAllModel(
      image: 'assets/images/sport1.png',
      title: "Fit Works idman zalı",
      subtitle: "2002 ci ildə yaranıb...",
      raiting: "4.5",
      degree: "En yaxsi sirada",
      category: "İdman"),
  CategoriesAllModel(
      image: 'assets/images/sport2.png',
      title: "Max-fit idman zalı",
      subtitle: "1999 cu ildə yaranıb...",
      raiting: "5.5",
      degree: "En yaxsi sirada",
      category: "İdman"),
  CategoriesAllModel(
      image: 'assets/images/sport3.png',
      title: "Combat idman zalı",
      subtitle: "2005 ci ildə yaranıb...",
      raiting: "2.5",
      degree: "Asagi sirada",
      category: "İdman"),
  CategoriesAllModel(
      image: 'assets/images/sport4.png',
      title: "Spartan idman zalı",
      subtitle: "2023 cü ildə yaranıb...",
      raiting: "9.7",
      degree: "Yuksek sırada",
      category: "İdman"),
];
