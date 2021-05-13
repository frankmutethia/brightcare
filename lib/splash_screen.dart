import 'dart:async';
import 'package:bright_care/getting_started_screen.dart';
import 'package:bright_care/home_screen.dart';
import 'package:bright_care/login_screen.dart';
import 'package:bright_care/services/auth_services.dart';
import 'package:flutter/material.dart';

// this is my first screen
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   displaySplash();
  // }

  // displaySplash() {
  //   Timer(Duration(seconds: 5), () async {
  //     if (await AuthService.auth.currentUser() != null) {
  //       Navigator.pushNamed(context, HomeScreen.id);
  //       // Route route = MaterialPageRoute(builder: (_) => HomeScreen());
  //       // Navigator.pushReplacement(context, route);
  //     } else {
  //       Navigator.pushNamed(context, GettingStartedScreen.id);
  //       // Route route = MaterialPageRoute(builder: (_) => GettingStartedScreen());
  //       // Navigator.pushReplacement(context, route);
  //     }
  //   });
  // }

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, GettingStartedScreen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 180.0),
                        child: Center(
                          child: Text(
                            'Bright Care',
                            style: TextStyle(
                              fontFamily: 'PatrickHand',
                              fontSize: 35.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
