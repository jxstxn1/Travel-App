import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

import '../constants.dart';
import '../widgets/categories_list.dart';
import '../widgets/top_nav_bar.dart';
import '../widgets/item_list.dart';
import '../widgets/picture_with_text.dart';
import '../widgets/search_with_button.dart';

StreamController<int> streamController = StreamController<int>();
enum _SelectedTab { home, favorite, search, person }

class HomeScreen extends StatefulWidget {
  final Stream<int> stream;

  HomeScreen(this.stream);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.stream.listen((index) {
      refreshScreen(index);
    });
  }

  void refreshScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget tabSelector() {
    switch (currentIndex) {
      case 0:
        TopNavigationBar();
        return AdventureTab();
      case 1:
        TopNavigationBar();
        return NewTab();
      case 2:
        TopNavigationBar();
        return TrendingTab();
      case 3:
        TopNavigationBar();
        return CultureTab();
    }
    return Container();
  }

  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: DotNavigationBar(
        margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.001),
        unselectedItemColor: Colors.grey,
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: Colors.black,
          ),

          /// Likes
          DotNavigationBarItem(
            icon: Icon(Icons.search),
            selectedColor: Colors.black,
          ),

          /// Search
          DotNavigationBarItem(
            icon: Icon(Icons.navigation),
            selectedColor: Colors.black,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: Icon(Icons.settings),
            selectedColor: Colors.black,
          ),
        ],
      ),
      backgroundColor: kDefaultBackgroundColor,
      body: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: Duration(milliseconds: 2000),
        builder: (context, double? value, child) {
          return ShaderMask(
            shaderCallback: (rect) {
              return RadialGradient(
                radius: value != null ? value * 5 : 1 * 5,
                colors: [
                  Colors.white,
                  Colors.white,
                  Colors.transparent,
                  Colors.transparent,
                ],
                stops: [0.0, 0.55, 0.6, 1.0],
                center: FractionalOffset(0.5, .85),
              ).createShader(rect);
            },
            child: child,
          );
        },
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
                child: PictureWithText(),
              ),
              SizedBox(height: size.height * .029),
              Padding(
                padding:
                    EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, 0),
                child: SearchWithButton(),
              ),
              SizedBox(height: size.height * .035),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, 0, 0),
                  child: Container(
                      height: size.height * .10, child: TopNavigationBar()),
                ),
              ),
              SizedBox(height: size.height * .0175),
              Padding(
                padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, 0, 0),
                child: tabSelector(),
              ),
              SizedBox(height: size.height * .035),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, 0, 0),
                  child: Text(
                    'Categories',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * .0185,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * .025),
              Padding(
                padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, 0, 0),
                child: CategoriesList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
