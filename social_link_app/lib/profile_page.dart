// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color.fromARGB(255, 36, 37, 45);
    Color tFocusColor = const Color.fromARGB(255, 117, 20, 141);
    Color tFillColor = const Color.fromARGB(255, 45, 45, 45);
    Color buttonColor1 = const Color.fromARGB(255, 142, 63, 255);
    Color buttonColor2 = const Color.fromARGB(255, 181, 55, 254);
    const String email = "Email";
    const String username = "Username";
    const String password = "Password";
    const String button = "Sign Up";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,

        ),
      body: Container(
        color: backgroundColor,
        child: Text("Profile Page",style: TextStyle(color: Colors.white),)
      ),
    );
  }
}