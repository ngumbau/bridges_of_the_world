import 'package:bridges_of_the_world/models/bottom_bar_item.dart';
import 'package:bridges_of_the_world/util/color.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final List<BottomBarItem> bottomBarListItems = [
    BottomBarItem(icon: Icons.explore_outlined, isSelected: true),
    BottomBarItem(icon: Icons.favorite_border, isSelected: false),
    BottomBarItem(icon: Icons.comment_outlined, isSelected: false),
    BottomBarItem(icon: Icons.account_circle_outlined, isSelected: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(bottomBarListItems.length, (index) {
          BottomBarItem barItem = bottomBarListItems[index];
          return IconButton(
            icon: Icon(barItem.icon),
            color: barItem.isSelected ? mainYellow : Colors.grey,
            onPressed: () {
              setState(() {
                for (var item in bottomBarListItems) {
                  item.isSelected = item == barItem;
                }
              });
            },
          );
        }),
      ),
    );
  }
}
