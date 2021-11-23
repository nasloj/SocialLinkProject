// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color.fromARGB(255, 36, 37, 45);
    Color barColor1 = const Color.fromARGB(255, 142, 63, 255);
    Color barColor2 = const Color.fromARGB(255, 181, 55, 254);
    String title = "Social Link";
    String imageUrl = "https://media.istockphoto.com/photos/portrait-of-smiling-optimistic-beard-pensioner-man-wear-light-blue-picture-id1287789056?b=1&k=20&m=1287789056&s=170667a&w=0&h=Z5fxguvjTc6keKU8HUbqTznSA3LNnIsn0ZYl9UyRhTc=";

    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title: Text(title),
        // ignore: prefer_const_constructors
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [barColor1, barColor2],
            ),
          ),
        ),
      ),
      body: Container(
        color: backgroundColor,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "John Doe",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Icon(
                          Icons.umbrella,
                          color: Colors.white,
                        )
                      ),
              
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Social Links",
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30.0),
              
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          )
                        ),
              
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}