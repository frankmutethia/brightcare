// import 'package:bright_care/login_screen.dart';
// import 'package:bright_care/services/auth_services.dart';
// import 'package:flutter/material.dart';

// // import 'package:msafiri/services/auth_services.dart';
// // import 'package:msafiri/screens/login_screen.dart';
// // import 'package:firebase_auth/firebase_auth.dart';

// // this is my fourth or the third screen
// class SignUpScreen extends StatefulWidget {
//   static final String id = " signup";
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   String _name, _email, _password;

//   final _formKey = GlobalKey<FormState>();

//   _submit() {
//     if (_formKey.currentState.validate()) {
//       _formKey.currentState.save();
//       //call  class authentication services for user details
//       AuthService.signUpUser(context, _name, _email, _password);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //debugShowCheckedModeBanner: false,
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
//                               labelText: 'Enter Name',
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
//                             keyboardType: TextInputType.text,
//                             validator: (name) =>
//                                 name.trim().isEmpty ? 'Enter valid name' : null,
//                             onSaved: (name) => _name = name,
//                           ),
//                         ),
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
//                             obscureText: true,
//                             validator: (password) => password.length < 5
//                                 ? 'Password mut be atleast 5 characters'
//                                 : null,
//                             onSaved: (password) => _password = password,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 25.0,
//                         ),
//                         Container(
//                           width: 340.0,
//                           height: 45.0,
//                           child: FlatButton(
//                             onPressed: () {
//                               // calling the submit button

//                               _submit();
//                             },
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(22.0)),
//                             color: Colors.purple,
//                             padding: EdgeInsets.all(10.0),
//                             child: Text(
//                               'Register',
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
//                             Text("Have and Account?"),
//                             FlatButton(
//                                 onPressed: () {
//                                   Navigator.pushReplacementNamed(
//                                       context, LoginScreen.id);
//                                 },
//                                 child: Text('Login')),
//                           ],
//                         ),
//                       ],
//                     ))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// } /*import 'package:flutter/material.dart';
// import 'package:msafiri/screens/login_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:msafiri/services/auth_services.dart';

// class SignUpScreen extends StatefulWidget {
//    static final String id = "signup_screen";
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {

//    String _name, _email, _password;
//    //code for validating the forms
//     final _formKey = GlobalKey<FormState>();
//   //method for validating form and the signup user
//    _submit() {
//     if (_formKey.currentState.validate()) {
//       _formKey.currentState.save();
//       //call  class authentication services for user details
//        AuthService.signUpUser(context, _name, _email, _password);
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//           children: <Widget>[
       
//             Form(
//               key: _formKey,
//         child: Column(
//       children: <Widget>[
//           Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 30.0, vertical: 10.0),
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           labelText: 'Enter Name',
//                           enabledBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black),
//                           ),
//                           focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black)),
//                           labelStyle: TextStyle(
//                             color: Colors.black,
//                             fontSize: 13.0,
//                           ),
//                         ),
//                         keyboardType: TextInputType.text,
//                         validator: (name) =>
//                             name.trim().isEmpty ? 'Enter valid name' : null,
//                         onSaved: (name) => _name = name,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 30.0, vertical: 10.0),
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           labelText: 'Email',
//                           enabledBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black),
//                           ),
//                           focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black)),
//                           labelStyle: TextStyle(
//                             color: Colors.black,
//                             fontSize: 13.0,
//                           ),
//                         ),
//                         keyboardType: TextInputType.emailAddress,
//                         validator: (email) =>  !email.contains('@')
//                             ? 'Email is invalid'
//                             : null,
//                         onSaved: (email) => _email = email,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 30.0, vertical: 10.0),
//                       child: TextFormField(
//                         style: TextStyle(color: Colors.black),
//                         decoration: InputDecoration(
//                           labelText: 'Password',
//                           enabledBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black),
//                           ),
//                           focusedBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black),
//                           ),
//                           labelStyle: TextStyle(
//                             color: Colors.black,
//                             fontSize: 13.0,
//                           ),
//                         ),
//                         obscureText: true,
//                         validator: (password) => password.length < 5
//                             ? 'Password mut be atleast 5 characters'
//                             : null,
//                         onSaved: (password) => _password = password,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 25.0,
//                     ),
//         Container(
//           width: 340.0,
//           height: 45.0,
//           child: FlatButton(
//             onPressed: () {

//             // calling the submit button


//               _submit();


//             },
//             shape:  RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(22.0)
//             ),
//             color: Colors.blueGrey,
//             padding: EdgeInsets.all(10.0),
//             child: Text(
//               'Register',
//               style: TextStyle(fontSize: 15.0, color: Colors.white),
//             ),
//           ),
//         ),
//         SizedBox(
//          height: 20.0,
//         ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text("Have and Account?"),
//             FlatButton(
//               onPressed: (){
//                Navigator.pushReplacementNamed(context, LoginScreen.id);
//               }, child: Text('Login')
//               ),
//           ],
//          ),
//       ],
//             ))
//           ],
//         ),
//     );
//   }
// }*/
