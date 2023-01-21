import 'package:bridges_of_the_world/data/data.dart';
import 'package:bridges_of_the_world/models/attraction.dart';
import 'package:bridges_of_the_world/widgets/attraction_card.dart';
import 'package:flutter/material.dart';

class AttractionListView extends StatelessWidget {
  const AttractionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10),
        itemCount: attractions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          Attraction attraction = attractions[index];
          return AttractionCard(attraction: attraction);
        }),
      ),
    );
  }
}
