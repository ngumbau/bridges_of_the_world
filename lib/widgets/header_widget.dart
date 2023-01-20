import 'package:bridges_of_the_world/util/color.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Where do you',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'want to go?',
            style: TextStyle(
              color: mainYellow,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: lightGray,
            ),
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
