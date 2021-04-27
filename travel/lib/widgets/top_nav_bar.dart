import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class TopNavigationBar extends StatefulWidget {
  @override
  _TopNavigationBarState createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  List<_Categories> _categories = [
    _Categories('Adventure', true),
    _Categories('New', false),
    _Categories('Trending', false),
    _Categories('Culture', false),
  ];

  void _tapHandler(int index){
    _categories.forEach((element) {
      element.selected = false;
    });
    _categories[index].selected = true;
    setState(() {});
  }

  Widget textBuild(String text, bool selected, Size size, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () => _tapHandler(index),
              child: Text(
                text,
                style: GoogleFonts.lato(
                    color: kSecondaryColor.withOpacity(1),
                    fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                    fontSize: size.height * .02),
              ),
            ),
            SizedBox(
              width: size.width * .1,
            ),
          ],
        ),
        SizedBox(
          height: size.height * .009,
        ),
        selected
            ? Container(
                alignment: Alignment.centerLeft,
                width: size.width * .06,
                height: size.height * .01,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  color: kSecondaryColor.withOpacity(1),
                ),
              )
            : Container(),
      ],
    );
  }

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
              textBuild(
                _categories[i].name,
                _categories[i].selected,
                size,
                i,
              ),
          ],
        ),
      ),
    );
  }
}

class _Categories {
  final String name;
  bool selected;

  _Categories(this.name, this.selected);
}
