import 'package:bridges_of_the_world/util/color.dart';
import 'package:bridges_of_the_world/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/header_widget.dart';
import '../widgets/attraction_list_view.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryGray,
        iconTheme: const IconThemeData(color: mainYellow),
        title: const Icon(
          Icons.airplanemode_on,
          color: mainYellow,
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_on_outlined,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: mainYellow,
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.all(20),
          child: const Icon(
            Icons.airplanemode_on,
            color: Colors.black,
            size: 80,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primaryGray,
              secondaryGray,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HeaderWidget(),
            AttractionListView(),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
