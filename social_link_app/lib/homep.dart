
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  //WidgetsApp //MaterialApp //CupertinoApp
  runApp(MaterialApp(
    home: HomePage(),

  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color.fromARGB(255, 36, 37, 45);
    Color tFocusColor = const Color.fromARGB(255, 117, 20, 141);
    Color tFillColor = const Color.fromARGB(255, 45, 45, 45);
    const String title = "Home Hub";
    
    
    const String Home = "Home Hub";
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      fillColor: tFillColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.0),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: tFocusColor),
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 20),

                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      fillColor: tFillColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusColor: Colors.black,

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: tFocusColor),
                        borderRadius: BorderRadius.circular(15.0)
                      )
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: tFillColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.0)
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: tFocusColor),
                        borderRadius: BorderRadius.circular(15.0),
                      )
                    ),
                  ),
                ),
        
              ]
        
            ),

      ),
    );
  
  }
}
