// import 'package:chatapp/views/signin.dart';
// import 'package:chatapp/views/signup.dart';
import 'package:bright_care/splash_screen.dart';
import 'package:bright_care/views/signin.dart';
import 'package:bright_care/views/signup.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(toggleView);
    // if (showSignIn) {
    //   return SignIn(toggleView);
    // } else {
    //   return SplashScreen(toggleView);
    // }
  }
}
