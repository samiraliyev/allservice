import 'package:flutter/material.dart';

class BodyAllComponent extends StatelessWidget {
  const BodyAllComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "İdman",
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
                  'assets/images/body1.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/body2.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/body3.png',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
