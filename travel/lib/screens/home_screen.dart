import 'package:flutter/material.dart';
import '../widgets/search_with_button.dart';
import '../constants.dart';
import '../widgets/picture_with_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDefaultBackgroundColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            kDefaultPadding, kDefaultPadding * 3, kDefaultPadding, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PictureWithText(),
              SizedBox(height: size.height * .035),
              SearchWithButton(),
            ],
          ),
        ),
      ),
    );
  }
}
