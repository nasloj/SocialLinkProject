import 'package:flutter/material.dart';
import 'homehub.dart';
import 'profile_page.dart';
import 'package:flutter/material.dart';
import 'package:social_link_app/profile_page.dart';
import 'package:social_link_app/register_page.dart';
import 'package:flutter/services.dart';
import 'profile_edit.dart';


class PSettingsP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color.fromARGB(255, 36, 37, 45);
    Color tFocusColor = const Color.fromARGB(255, 117, 20, 141);
    Color tFillColor = const Color.fromARGB(255, 45, 45, 45);
    Color buttonColor1 = const Color.fromARGB(255, 142, 63, 255);
    Color buttonColor2 = const Color.fromARGB(255, 181, 55, 254);
    String imageUrl = "https://media.istockphoto.com/photos/portrait-of-smiling-optimistic-beard-pensioner-man-wear-light-blue-picture-id1287789056?b=1&k=20&m=1287789056&s=170667a&w=0&h=Z5fxguvjTc6keKU8HUbqTznSA3LNnIsn0ZYl9UyRhTc=";
    const String button = "Sign Out";
    const String title = "Profile";
    const String aboutME = "About me:";
    // const String password = "Password";
    final aboutmeCont = TextEditingController();
 

    return Scaffold(

      body: Container(
        color: backgroundColor,

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                padding: EdgeInsets.only(),

                child: Container(
                  margin: EdgeInsets.only(left: 15, top: 0),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,          
                    children: [
                      IconButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => UserAccount()));}, icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 20,
                      )),
                      // onTap: () {
                      // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeHub()));
                      // },
                      
                      
                    
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        
                      ),
                    ],
            
                    
                
                  ),
                ),
                
              ),
              
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
              

              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(0),
                child: SizedBox(
                  height: 100,
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 200, top: 0),
                child: Text(
                  aboutME,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
                child: TextField(
                  controller: aboutmeCont,
                  maxLength: 70, //MAX 70 charcters!
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
              Row(
    children: <Widget>[
        Expanded(
            child: Divider()
        ),       

        Text("Your Posts", style: TextStyle(color: Colors.grey,)),        

        Expanded(
            child: Divider()
        ),
    ]
),

              // Container(
              //   margin: EdgeInsets.only(right: 200),
              //   child: Text(
              //     password,
              //     style: TextStyle(
              //       color: Colors.white,
              //     ),
              //   ),
              // ),

              // Container(
              //   padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              //   child: TextField(
              //     obscureText: true,
              //     controller: passwordCont,

              //     style: TextStyle(
              //       color: Colors.white,
              //     ),
                  
              //     decoration: InputDecoration(
                    
              //       filled: true,
              //       fillColor: tFillColor,
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide.none,
              //         borderRadius: BorderRadius.circular(15.0)
              //       ),

              //       focusedBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: tFocusColor),
              //         borderRadius: BorderRadius.circular(15.0),
              //       )
              //     ),
              //   ),
              // ),

              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.fromLTRB(110, 20, 110, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [buttonColor1, buttonColor2],
                    ),
                  ),
                  child: Text(
                    button,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),

                // onTap: () {
                //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeHub()));
                // },
              )
            ],
          ),
        ),
      ),
    );
  }
}

// dependencies:
//   settings_ui: ^0.7.0

//   SettingsList(
//         sections: [
//           SettingsSection(
//             title: 'Section',
//             tiles: [
//               SettingsTile(
//                 title: 'Language',
//                 subtitle: 'English',
//                 leading: Icon(Icons.language),
//                 onPressed: (BuildContext context) {},
//               ),
//               SettingsTile.switchTile(
//                 title: 'Use fingerprint',
//                 leading: Icon(Icons.fingerprint),
//                 switchValue: value,
//                 onToggle: (bool value) {},
//               ),
//             ],
//           ),
//         ],
//       )
// https://medium.com/@adityadroid/60-days-of-flutter-building-a-messenger-from-scratch-ab2c89e1fd0f