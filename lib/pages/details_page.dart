import 'package:bridges_of_the_world/models/attraction.dart';
import 'package:bridges_of_the_world/util/color.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Attraction attraction;
  const DetailsPage({required this.attraction, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(attraction.imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  attraction.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  attraction.location,
                  style: const TextStyle(
                    color: mainYellow,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  attraction.description,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View Comments',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Material(
                        color: mainYellow,
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.black.withOpacity(0.1),
                          highlightColor: Colors.black.withOpacity(0.2),
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20, right: 20),
                            child: const Text(
                              'Use Itinerary',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
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
                  icon: const Icon(
                    Icons.favorite,
                    color: mainYellow,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
