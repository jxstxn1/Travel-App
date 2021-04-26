import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              bottom: deviceHeight * 0.32,
            )
          ],
        ),
      ),
    );
  }
}
