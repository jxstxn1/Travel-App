import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/constants.dart';
import 'package:travel/screens/home_screen.dart';

class ForwardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => HomeScreen(),
        ),
      ),
      child: Container(
        height: size.height * .06,
        width: size.width * .13,
        decoration: BoxDecoration(
          color: kDefaultBackgroundColor.withOpacity(.96),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              spreadRadius: 12.5,
              color: kDefaultBackgroundColor.withOpacity(.13),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          child: SvgPicture.asset(
            "assets/icons/angle-right-b.svg",
            color: Colors.black.withOpacity(.66),
            // width: size.width * .,
          ),
        ),
      ),
    );
  }
}
