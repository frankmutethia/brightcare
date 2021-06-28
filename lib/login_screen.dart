// import 'package:bright_care/services/auth_services.dart';
// import 'package:bright_care/signup_screen.dart';
// import 'package:flutter/material.dart';
// // import 'package:msafiri/screens/signup_screen.dart';
// // import 'package:msafiri/screens/homepage_screen.dart';
// // import 'package:msafiri/screens/signup_screen.dart';
// // import 'package:msafiri/services/auth_services.dart';
// //import 'package:powers/screens/welcome_screen.dart';

// // this is my fourth or third screen
// class LoginScreen extends StatefulWidget {
//   static final String id = "loginscreen";
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   bool _obSecureText = false;
//   String _email, _password;
//   final _formKey = GlobalKey<FormState>();
//   final _scaffoldkey = GlobalKey<ScaffoldState>();
//   _toggle() {
//     setState(() {
//       _obSecureText = !_obSecureText;
//     });
//   }

//   _submit() {
//     if (_formKey.currentState.validate()) {
//       _formKey.currentState.save();
//       AuthService.login(context, _email, _password);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SizedBox(
//                   height: 80.0,
//                 ),
//                 Text(
//                   'Welcome to Bright Care',
//                   style: TextStyle(
//                     fontFamily: 'PatrickHand',
//                     fontSize: 30.0,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 // Container(
//                 //   child: Center(
//                 //     child: CircleAvatar(
//                 //         radius: 50.0,
//                 //         backgroundImage:
//                 //             ExactAssetImage('assets/images/beach.jpg')),
//                 //   ),
//                 // ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 Text(
//                   'Jisajili',
//                   style: TextStyle(
//                     fontFamily: 'Sacramonte',
//                     color: Colors.black,
//                     fontSize: 15.0,
//                     letterSpacing: 2.5,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                     height: 20.0,
//                     child: Divider(
//                       color: Colors.purpleAccent,
//                     )),
//                 Form(
//                     key: _formKey,
//                     child: Column(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 30.0, vertical: 10.0),
//                           child: TextFormField(
//                             decoration: InputDecoration(
//                               labelText: 'Email',
//                               enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               focusedBorder: UnderlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.black)),
//                               labelStyle: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 13.0,
//                               ),
//                             ),
//                             keyboardType: TextInputType.emailAddress,
//                             validator: (email) => !email.contains('@')
//                                 ? 'Email is invalid'
//                                 : null,
//                             onSaved: (email) => _email = email,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 30.0, vertical: 10.0),
//                           child: TextFormField(
//                             style: TextStyle(color: Colors.black),
//                             decoration: InputDecoration(
//                               suffixIcon: IconButton(
//                                 color: Colors.black,
//                                 icon: _obSecureText
//                                     ? Icon(Icons.visibility)
//                                     : Icon(Icons.visibility_off),
//                                 onPressed: _toggle,
//                               ),
//                               labelText: 'Password',
//                               enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               labelStyle: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 13.0,
//                               ),
//                             ),
//                             obscureText: _obSecureText,
//                             validator: (password) => password.length < 6
//                                 ? "Must be atleast six characters"
//                                 : null,
//                             onSaved: (password) => _password = password,
//                           ),
//                         ),
//                         // Padding(
//                         //   padding: const EdgeInsets.symmetric(
//                         //       horizontal: 30.0, vertical: 10.0),
//                         //   child: TextFormField(
//                         //     style: TextStyle(color: Colors.black),
//                         //     decoration: InputDecoration(
//                         //       labelText: 'Password',
//                         //       enabledBorder: UnderlineInputBorder(
//                         //         borderSide: BorderSide(color: Colors.black),
//                         //       ),
//                         //       focusedBorder: UnderlineInputBorder(
//                         //         borderSide: BorderSide(color: Colors.black),
//                         //       ),
//                         //       labelStyle: TextStyle(
//                         //         color: Colors.black,
//                         //         fontSize: 13.0,
//                         //       ),
//                         //     ),
//                         //     obscureText: true,
//                         //     validator: (password) => password.length < 5
//                         //         ? 'Password mut be atleast 5 characters'
//                         //         : null,
//                         //     onSaved: (password) => _password = password,
//                         //   ),
//                         // ),
//                         SizedBox(
//                           height: 25.0,
//                         ),
//                         Container(
//                           width: 340.0,
//                           height: 45.0,
//                           child: FlatButton(
//                             onPressed: () {
//                               _submit();
//                             },
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(22.0)),
//                             color: Colors.purple,
//                             padding: EdgeInsets.all(10.0),
//                             child: Text(
//                               'Login',
//                               style: TextStyle(
//                                   fontSize: 15.0, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20.0,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Text("Don't have and Account?"),
//                             FlatButton(
//                                 onPressed: () {
//                                   Navigator.pushReplacementNamed(
//                                       context, SignUpScreen.id);
//                                 },
//                                 child: Text('Sign Up')),
//                           ],
//                         ),
//                       ],
//                     ))
//                 /*
//                 RoundedInputField(
//                   hintText: "Your Email",
//                   onChanged: (value) {},
//                 ),
//                 RoundedPasswordField(
//                   onChanged: (value) {},
//                 ),
//                 RoundedButton(
//                   text: "LOGIN",
//                   press: () {
//                     _submit();
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) {
//                           return HomePageScreen();
//                         },
//                       ),
//                     );
//                   },
//                 ),*/
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
