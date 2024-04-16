import 'package:flutter/material.dart';

class SitterHomeComponent extends StatelessWidget {
  const SitterHomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Dayə",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/sitter1.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/sitter2.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/sitter3.png',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


// const Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Təfərrüatlar"),
//                           Text("Gallerya"),
//                           Text("Çalışanlar"),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       const Text(
//                         "All sport",
//                         style: TextStyle(
//                             fontSize: 24, fontWeight: FontWeight.bold),
//                       ),
//                       const ListTile(
//                         leading: Icon(Icons.share_location_rounded),
//                         title: Text("Sabuncu Rayonu"),
//                         trailing: Text("124 baxish"),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       const Text(
//                         "Detallar",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 17),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       const Text(
//                           "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ut tincidunt sem. Quisque nec augue eget lorem lobortis rutrum...Daha çox"),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       const Text(
//                         "Biz nə təklif edirik",
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 17),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         height: 40,
//                         child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemCount: 4,
//                           itemBuilder: (context, index) {
//                             return Row(
//                               children: [
//                                 const SizedBox(
//                                   width: 5,
//                                 ),
//                                 Container(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal: 30, vertical: 10),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(25),
//                                     border: Border.all(color: Colors.grey),
//                                     color: Colors.white,
//                                   ),
//                                   child: Text("Crossfit"),
//                                 ),
//                               ],
//                             );
//                           },
//                         ),
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.email_outlined,
//                           color: AppColor.btnColor,
//                         ),
//                         title: Text("Email"),
//                         subtitle: Text("info@AllServ.az"),
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.phone,
//                           color: AppColor.btnColor,
//                         ),
//                         title: Text("Tel"),
//                         subtitle: Text("050-500-50-50"),
//                       ),