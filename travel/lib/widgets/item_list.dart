import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  Map<int, List<Items>> items = {
    0: [
      Items('Olympic National Forest', 'Washington', ''),
      Items('Mount Kilimanjaro', 'Tanzania', ''),
    ],
    1: [],
    2: [],
    3: []
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
