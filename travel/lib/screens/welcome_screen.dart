import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}
