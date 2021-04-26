import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/picture_with_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultBackgroundColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding * 3, kDefaultPadding, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PictureWithText(),
            ],
          ),
        ),
      ),
    );
  }
}
