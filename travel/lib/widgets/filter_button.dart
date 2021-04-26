import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class FilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .065,
      width: size.width * .14,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(1),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: RotationTransition(
          turns: AlwaysStoppedAnimation(90 / 360),
          child: SvgPicture.asset(
            "assets/icons/sliders.svg",
            color: kDefaultBackgroundColor.withOpacity(.84),
            width: size.width * .08,
          ),
        ),
      ),
    );
  }
}
