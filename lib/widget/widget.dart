import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Image.asset(
      "assets/images/logo.png",
      height: 40,
    ),
    elevation: 0.0,
    centerTitle: false,
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.black),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 13.0,
      ),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)));
}

TextStyle simpleTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 16);
}

TextStyle biggerTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 17);
}
