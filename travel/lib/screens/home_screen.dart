import 'package:flutter/material.dart';
import 'package:travel/widgets/top_nav_bar.dart';

import '../constants.dart';
import '../widgets/picture_with_text.dart';
import '../widgets/search_with_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDefaultBackgroundColor,
      body: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: Duration(milliseconds: 1500),
        builder: (context, double? value, child) {
          return ShaderMask(
            shaderCallback: (rect) {
              return RadialGradient(
                radius: value != null ? value * 5 : 1 * 5,
                colors: [
                  Colors.white,
                  Colors.white,
                  Colors.transparent,
                  Colors.transparent
                ],
                stops: [0.0, 0.55, 0.6, 1.0],
                center: FractionalOffset(0.5, .85),
              ).createShader(rect);
            },
            child: child,
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  kDefaultPadding, kDefaultPadding * 3, kDefaultPadding, 0),
              child: PictureWithText(),
            ),
            SizedBox(height: size.height * .035),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, 0),
              child: SearchWithButton(),
            ),
            SizedBox(height: size.height * .01),
            Padding(
              padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, 0, 0),
              child: TopNavigationBar(),
            ),
          ],
        ),
      ),
    );
  }
}
