import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/welcome_screen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        splashColor: Colors.white,
        accentColor: Colors.white,
        accentColorBrightness: Brightness.light,
        backgroundColor: kDefaultBackgroundColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
