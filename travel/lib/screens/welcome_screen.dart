import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/images/welcome-screen-2.jpg',
                  fit: BoxFit.cover),
            ),
            Positioned(
              width: deviceWidth,
              child: Text(
                "Explore the world",
                style: GoogleFonts.lato(
                    color: Colors.white.withOpacity(.86),
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              bottom: deviceHeight * 0.38,
            ),
            Positioned(
              width: deviceWidth,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
                child: Text(
                  "Make now your time to live a good life by exploring nature",
                  style: GoogleFonts.lato(
                      color: Colors.white.withOpacity(.70),
                      fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              bottom: deviceHeight * 0.30,
            ),
          ],
        ),
      ),
    );
  }
}
