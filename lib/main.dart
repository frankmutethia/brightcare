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
import 'package:bright_care/views/chat_room.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bright_care/helper/authenticate.dart';
import 'package:bright_care/helper/helperfunctions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool userIsLoggedIn;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await HelperFunctions.getUserLoggedInSharedPreference().then((value) {
      setState(() {
        userIsLoggedIn = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BrightCare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // primaryColor: Color(0xff145C9E),
        // scaffoldBackgroundColor: Color(0xff1F1F1F),
        // accentColor: Color(0xff007EF4),
        // fontFamily: "OverpassRegular",
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: userIsLoggedIn != null
          ? userIsLoggedIn
              ? HomeScreen()
              : Authenticate()
          : Container(
              child: Center(
                child: Authenticate(),
              ),
            ),
      routes: {
        // GettingStartedScreen.id: (context) => GettingStartedScreen(),
        // LoginScreen.id: (context) => LoginScreen(),
        // SignUpScreen.id: (context) => SignUpScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        RelaxCenter.id: (context) => RelaxCenter(),
        RelaxCenterOne.id: (context) => RelaxCenterOne(),
        RelaxCenterTwo.id: (context) => RelaxCenterTwo(),
        OneRelaxCenterOne.id: (context) => OneRelaxCenterOne(),
        OneRelaxCenter.id: (context) => OneRelaxCenter(),
        TwoRelaxCenterTwo.id: (context) => TwoRelaxCenterTwo(),
        ChatRoom.id: (context) => ChatRoom(),
      },
    );
  }
}

// import 'package:bright_care/getting_started_screen.dart';
// import 'package:bright_care/home_screen.dart';
// import 'package:bright_care/login_screen.dart';
// import 'package:bright_care/one_relaxcenter.dart';
// import 'package:bright_care/one_relaxcenterone.dart';
// import 'package:bright_care/relax_center.dart';
// import 'package:bright_care/relaxcenter_one.dart';
// import 'package:bright_care/relaxcenter_two.dart';
// import 'package:bright_care/services/auth_services.dart';
// import 'package:bright_care/signup_screen.dart';
// import 'package:bright_care/splash_screen.dart';
// import 'package:bright_care/two_relaxcentertwo.dart';
// import 'package:bright_care/views/chat_room.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// // Future<void> main() async {
// //   WidgetsFlutterBinding.ensureInitialized();

// //   AuthService.auth = FirebaseAuth.instance;

// //   runApp(MyApp());
// // }
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Bright Care',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: SplashScreen(),
//       routes: {
//         GettingStartedScreen.id: (context) => GettingStartedScreen(),
//         LoginScreen.id: (context) => LoginScreen(),
//         SignUpScreen.id: (context) => SignUpScreen(),
//         HomeScreen.id: (context) => HomeScreen(),
//         RelaxCenter.id: (context) => RelaxCenter(),
//         RelaxCenterOne.id: (context) => RelaxCenterOne(),
//         RelaxCenterTwo.id: (context) => RelaxCenterTwo(),
//         OneRelaxCenterOne.id: (context) => OneRelaxCenterOne(),
//         OneRelaxCenter.id: (context) => OneRelaxCenter(),
//         TwoRelaxCenterTwo.id: (context) => TwoRelaxCenterTwo(),
//         ChatRoom.id: (context) => ChatRoom(),
//       },
//     );
//   }
// }
