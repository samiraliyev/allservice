import 'package:flutter/material.dart';

class CleanHomeComponent extends StatelessWidget {
  const CleanHomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ev təmizliyi",
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
                  'assets/images/cleaner1.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/cleaner2.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/cleaner3.png',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
