import 'package:flutter/material.dart';
import 'package:travel/constants.dart';

class ForwardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .07,
      width: size.width * .15,
      decoration: BoxDecoration(
        color: kDefaultBackgroundColor.withOpacity(.86),
        borderRadius: BorderRadius.all(Radius.circular(15),),
        boxShadow: [
          BoxShadow(
            spreadRadius: 12.5,
            color: kDefaultBackgroundColor.withOpacity(.23),
          ),
        ]
      )
    );
  }
}
