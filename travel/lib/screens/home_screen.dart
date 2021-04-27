import 'package:flutter/material.dart';
import 'package:travel/widgets/top_nav_bar.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../constants.dart';
import '../widgets/picture_with_text.dart';
import '../widgets/search_with_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDefaultBackgroundColor,
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.pinned,
        snakeShape: SnakeShape.indicator,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        padding: EdgeInsets.zero,
        snakeViewColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.red,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'tickets'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'calendar'),
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.close), label: 'microphone'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'search')
        ],
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),
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
