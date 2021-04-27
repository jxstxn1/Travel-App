import 'package:flutter/material.dart';

import '../constants.dart';

Widget bookMark(Size size) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, kDefaultPadding / 1.5, kDefaultPadding / 1.5, 0),
    alignment: Alignment.topRight,
    height: size.height * .04,
    width: size.width * .09,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(11.25),
      ),
      color: Colors.white.withOpacity(.7),
    ),
    child: Center(
      child: Icon(
        Icons.bookmark,
        size: size.height * .0325,
      ),
    ),
  );
}