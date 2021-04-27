import 'package:flutter/material.dart';
import 'package:travel/models/Items.dart';
import '../widgets/item.dart';

class ItemList extends StatelessWidget {
  final List<List<Items>> _items = [
    [
      Items('Olympic National Forest', 'Washington',
          'assets/images/olympic.jpeg'),
      Items('Mount Kilimanjaro', 'Tanzania', 'assets/images/forest.jpg'),
    ],
    [
      Items('Brandenburg Gate', 'Berlin', 'assets/images/forest.jpg'),
      Items('Coliseum', 'Rom', 'assets/images/olympic.jpeg'),
    ],
    [
      Items('Amsterdam', 'Netherlands', 'assets/images/forest.jpg'),
      Items('Madeira', 'Portugal', 'assets/images/olympic.jpeg'),
    ],
    [
      Items('Machu Picchu', 'Peru', 'assets/images/forest.jpg'),
      Items('Amritsar', 'Punjab', 'assets/images/olympic.jpeg'),
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          for(int i = 0; i<_items[0].length; i++) Item(item: _items[0][i],),
        ],
      ),
    );
  }
}
