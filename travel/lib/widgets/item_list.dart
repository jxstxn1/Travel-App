import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final Map<int, List<Items>> items = {
    0: [
      Items('Olympic National Forest', 'Washington',
          'assets/images/olympic.jpeg'),
      Items('Mount Kilimanjaro', 'Tanzania', 'assets/images/forest.jpg'),
    ],
    1: [
      Items('Brandenburg Gate', 'Berlin', 'assets/images/forest.jpg'),
      Items('Coliseum', 'Rom', 'assets/images/olympic.jpeg'),
    ],
    2: [
      Items('Amsterdam', 'Netherlands', 'assets/images/forest.jpg'),
      Items('Madeira', 'Portugal', 'assets/images/olympic.jpeg'),
    ],
    3: [
      Items('Machu Picchu', 'Peru', 'assets/images/forest.jpg'),
      Items('Amritsar', 'Punjab', 'assets/images/olympic.jpeg'),
    ]
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}

class Items {
  final String title;
  final String location;
  final String image;

  Items(this.title, this.location, this.image);
}
