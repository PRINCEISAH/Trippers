import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:trippers/main.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => new _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 14,
        navigateAfterSeconds: new MyHomePage(),
        title: new Text(
          'Tripper',
          style: GoogleFonts.nunito(
              color: Color(0xff3E64FF),
              fontWeight: FontWeight.w800,
              fontSize: 39),
        ),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Color(0xff3E64FF));
  }
}
