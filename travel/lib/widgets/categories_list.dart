import 'package:flutter/material.dart';
import 'package:travel/widgets/categories_item.dart';

import '../models/categories.dart';

class CategoriesList extends StatelessWidget {
  final List<Categories> _categories = [
    Categories('Forest', 'assets/icons/palm-tree.svg'),
    Categories('Mountain', 'assets/icons/mountain.svg'),
    Categories('Camp', 'assets/icons/camping.svg'),
    Categories('Beach', 'assets/icons/parasol.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .1,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            for (int i = 0; i < _categories.length; i++)
              CategoriesItem(
                categories: _categories[i],
              ),
          ],
        ),
      ),
    );
  }
}
