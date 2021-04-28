import 'package:flutter/material.dart';
import 'package:travel/models/items.dart';
import '../widgets/item.dart';

class AdventureTab extends StatelessWidget {
  final List<Items> _items = [
    Items(
        'Olympic National Forest', 'Washington', 'assets/images/olympic.jpeg'),
    Items('Mount Kilimanjaro', 'Tanzania', 'assets/images/forest.jpg'),
    Items('Munnar Reserve Forest', 'Kerala',
        'assets/images/munnar_reserve_forest.jpg'),
    Items(
        'Amazon Rain Forest', 'Brazil', 'assets/images/amazon_rain_forest.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: size.height * .38,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            for (int i = 0; i < _items.length; i++)
              Item(
                item: _items[i],
              ),
          ],
        ),
      ),
    );
  }
}

class NewTab extends StatelessWidget {
  final List<Items> _items = [
    Items('Brandenburg Gate', 'Berlin', 'assets/images/brandenburg_gate.jpg'),
    Items('Mount Everest', 'Nepal', 'assets/images/mount_everest.jpeg'),
    Items('Colosseum', 'Rom', 'assets/images/colosseum1.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: size.height * .38,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            for (int i = 0; i < _items.length; i++)
              Item(
                item: _items[i],
              ),
          ],
        ),
      ),
    );
  }
}

class TrendingTab extends StatelessWidget {
  final List<Items> _items = [
    Items('Amsterdam', 'Netherlands',
        'assets/images/welcome-screen-landscape-1.jpg'),
    Items('Madeira', 'Portugal', 'assets/images/madeira.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: size.height * .38,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            for (int i = 0; i < _items.length; i++)
              Item(
                item: _items[i],
              ),
          ],
        ),
      ),
    );
  }
}

class CultureTab extends StatelessWidget {
  final List<Items> _items = [
    Items('Machu Picchu', 'Peru', 'assets/images/machu_picchu1.jpg'),
    Items('Amritsar', 'Punjab', 'assets/images/amritsar2.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: size.height * .38,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            for (int i = 0; i < _items.length; i++)
              Item(
                item: _items[i],
              ),
          ],
        ),
      ),
    );
  }
}
