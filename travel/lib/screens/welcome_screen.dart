import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/forward_button.dart';

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
              height: deviceHeight,
              width: deviceWidth,
              child: Image.asset('assets/images/welcome-screen-2.jpg',
                  fit: BoxFit.cover),
            ),
            Container(
              width: deviceWidth,
              height: deviceHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Explore the world",
                    style: GoogleFonts.lato(
                        color: Colors.white.withOpacity(.86),
                        fontSize: deviceWidth * 0.084,
                        fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: deviceHeight * 0.037,
                  ),
                  Text(
                    "Make now your time to live a good life",
                    style: GoogleFonts.lato(
                        color: Colors.white.withOpacity(.70),
                        fontSize: deviceWidth * 0.055),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.01,
                  ),
                  Text(
                    "by exploring nature",
                    style: GoogleFonts.lato(
                        color: Colors.white.withOpacity(.70),
                        fontSize: deviceWidth * 0.055),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.08,
                  ),
                 ForwardButton(),
                  SizedBox(
                    height: deviceHeight * 0.09,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
