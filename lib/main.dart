import 'package:bright_care/getting_started_screen.dart';
import 'package:bright_care/home_screen.dart';
import 'package:bright_care/login_screen.dart';
import 'package:bright_care/one_relaxcenter.dart';
import 'package:bright_care/one_relaxcenterone.dart';
import 'package:bright_care/relax_center.dart';
import 'package:bright_care/relaxcenter_one.dart';
import 'package:bright_care/relaxcenter_two.dart';
import 'package:bright_care/services/auth_services.dart';
import 'package:bright_care/signup_screen.dart';
import 'package:bright_care/splash_screen.dart';
import 'package:bright_care/two_relaxcentertwo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   AuthService.auth = FirebaseAuth.instance;

//   runApp(MyApp());
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bright Care',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        GettingStartedScreen.id: (context) => GettingStartedScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        RelaxCenter.id: (context) => RelaxCenter(),
        RelaxCenterOne.id: (context) => RelaxCenterOne(),
        RelaxCenterTwo.id: (context) => RelaxCenterTwo(),
        OneRelaxCenterOne.id: (context) => OneRelaxCenterOne(),
        OneRelaxCenter.id: (context) => OneRelaxCenter(),
        TwoRelaxCenterTwo.id: (context) => TwoRelaxCenterTwo(),
      },
    );
  }
}
