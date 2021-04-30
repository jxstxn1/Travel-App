import 'package:flutter/material.dart';
import '../widgets/filter_button.dart';
import '../widgets/search_bar.dart';

class SearchWithButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SearchBar(),
        SizedBox(width: size.width * .08,),
        FilterButton()
      ],
    );
  }
}
