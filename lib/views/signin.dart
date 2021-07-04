import 'package:bright_care/chatservices/auth.dart';
import 'package:bright_care/chatservices/database.dart';
import 'package:bright_care/helper/helperfunctions.dart';
import 'package:bright_care/helper/theme.dart';
import 'package:bright_care/home_screen.dart';
import 'package:bright_care/views/chat_room.dart';
import 'package:bright_care/views/forgot_password.dart';
import 'package:bright_care/views/signup.dart';
import 'package:bright_care/widget/widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static final String id = " signin";
  // final Function toggleView;

  // SignIn(this.toggleView);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController usernameEditingController = new TextEditingController();
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();

  AuthService authService = new AuthService();
  DatabaseMethods databaseMethods = new DatabaseMethods();

  final formKey = GlobalKey<FormState>();

  bool isLoading = false;

  signIn() async {
    if (formKey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });

      await authService
          .signInWithEmailAndPassword(
              emailEditingController.text, passwordEditingController.text)
          .then((result) async {
        // if (result != null) {
        //   Map<String, String> userDataMap = {
        //     "userName": usernameEditingController.text,
        //     "userEmail": emailEditingController.text
        //   };

        //   databaseMethods.addUserInfo(userDataMap);

        //   HelperFunctions.saveUserLoggedInSharedPreference(true);
        //   HelperFunctions.saveUserNameSharedPreference(
        //       usernameEditingController.text);
        //   HelperFunctions.saveUserEmailSharedPreference(
        //       emailEditingController.text);

        //   Navigator.pushReplacement(
        //       context, MaterialPageRoute(builder: (context) => ChatRoom()));
        // }
        if (result != null) {
          QuerySnapshot userInfoSnapshot =
              await DatabaseMethods().getUserInfo(emailEditingController.text);

          HelperFunctions.saveUserLoggedInSharedPreference(true);
          HelperFunctions.saveUserNameSharedPreference(
              userInfoSnapshot.documents[0].data["userName"]);
          HelperFunctions.saveUserEmailSharedPreference(
              userInfoSnapshot.documents[0].data["userEmail"]);

          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ChatRoom()));
        } else {
          setState(() {
            isLoading = false;
            // show snackbar;
          });
        }
      });
    }
  }

  singUp() async {
    if (formKey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });

      await authService
          .signUpWithEmailAndPassword(
              emailEditingController.text, passwordEditingController.text)
          .then((result) {
        if (result != null) {
          Map<String, String> userDataMap = {
            "userName": usernameEditingController.text,
            "userEmail": emailEditingController.text
          };

          databaseMethods.addUserInfo(userDataMap);

          HelperFunctions.saveUserLoggedInSharedPreference(true);
          HelperFunctions.saveUserNameSharedPreference(
              usernameEditingController.text);
          HelperFunctions.saveUserEmailSharedPreference(
              emailEditingController.text);

          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ChatRoom()));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarMain(context),
      body: isLoading
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : SingleChildScrollView(
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 170.0),
                  child: Column(
                    children: [
                      Text(
                        'Welcome to Bright Care',
                        style: TextStyle(
                          fontFamily: 'PatrickHand',
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                          height: 50.0,
                          child: Divider(
                            color: Colors.purpleAccent,
                          )),
                      //Spacer(),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (val) {
                                return RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(val)
                                    ? null
                                    : "Please Enter Correct Email";
                              },
                              controller: emailEditingController,
                              style: simpleTextStyle(),
                              decoration: textFieldInputDecoration("email"),
                            ),
                            TextFormField(
                              obscureText: true,
                              validator: (val) {
                                return val.length > 6
                                    ? null
                                    : "Enter Password 6+ characters";
                              },
                              style: simpleTextStyle(),
                              controller: passwordEditingController,
                              decoration: textFieldInputDecoration("password"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPassword()));
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Text(
                                  "Forgot Password?",
                                  style: simpleTextStyle(),
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          signIn();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0xff007EF4),
                                  const Color(0xff2A75BC)
                                ],
                              )),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Sign In",
                            style: biggerTextStyle(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Sign In with Google",
                          style: TextStyle(
                              fontSize: 17, color: CustomTheme.textColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have account? ",
                            style: simpleTextStyle(),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, SignUp.id);
                            },
                            // onTap: () {
                            //   widget.toggleView();
                            // },
                            child: Text(
                              "Register now",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
