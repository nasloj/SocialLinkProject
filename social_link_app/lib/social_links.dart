import 'package:flutter/material.dart';
import 'package:social_link_app/profile_edit.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color.fromARGB(255, 36, 37, 45);
    String title = "Social Links";
    Color cardColor1 = const Color.fromARGB(255, 84, 109, 232);
    Color cardColor2 = const Color.fromARGB(255, 246, 57, 72);

    Widget card = Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 80.0),
          height: 100,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),

            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [cardColor1, cardColor2],
            )
          ),

          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                "Instagram",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),

         Container(
          margin: EdgeInsets.only(top: 140.0),
          height: 40,
          width: 150,

          decoration: BoxDecoration(
            color: Colors.white,

          ),
          
          child: Center(
            child: Text(
              "Link",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ),

        Container(
          margin: EdgeInsets.only(top: 140.0, left: 150),
          height: 40,
          width: 150,

          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              left: BorderSide(color: Colors.black)
            )
          ),
          
          child: Center(
            child: Text(
              "Unlink",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )
            ),
          )
        ),
      ]
    );

    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => UserAccount()));
          },
         icon: Icon(Icons.arrow_back_ios_new)
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(title),
        // ignore: prefer_const_constructors
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
          child: Column(
            children: [
              card,
            ],
          ),
        ),
      ),
    );
  }
}