
import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'notification_page.dart';
import 'profilesettings.dart';
import 'profile_edit.dart';
import 'post_widget.dart';
import 'navbar.dart';

class HomeHub extends StatelessWidget {
  int _selectedIndex = 0;


  
  // PageController pageController = PageController();
  @override
  Widget build(BuildContext context){
    Color backgroundColor = const Color.fromARGB(255, 36, 37, 45);
    Color iconColor = const Color.fromARGB(255, 36, 37, 45);
    List<Post> posts = [
      Post(likes: 12, comments: 5, appColor: Colors.blue,text: "Post 1",),
    ];

    return Scaffold(
      
        appBar: new AppBar(
        centerTitle: true,  
        title: new Text('Social Link',),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromARGB(255, 142, 63, 255),
                  Color.fromARGB(255, 181, 55, 254),
                ])
          ),
        ),
        

        // backgroundColor: Color.fromARGB(255, 142, 63, 255),
        
        
      ),
      bottomNavigationBar: NavBar(index: 0),
      
      body: new Container(
        color: backgroundColor,
        margin: new EdgeInsets.only(
          top: 0.0,
        ),
        alignment: Alignment.center,
        child:
          ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return posts[index];
            },
          ),
            
            // new FlatButton(
            //   child: new Text(
            //     'Logout'
            //   ),
            //   // onPressed: () {
            //   //   appAuth.logout().then(
            //   //       (_) => Navigator.of(context).pushReplacementNamed('/login')
            //   //   );
            //   // }
            // )
            
          // ],
        
      ),
    ); 
  }
}

      
      // body: new Container(
      //   color: backgroundColor,
      //   margin: new EdgeInsets.only(
      //     top: 50.0
      //   ),
      //   alignment: Alignment.center,
      //   child: new Column(
      //     children: <Widget>[
      //       new Text('Custom Feed Here'),
      //       new FlatButton(
      //         child: new Text(
      //           'Logout'
      //         ),
      //         onPressed: () {
      //           // appAuth.logout().then(
      //           //     (_) => Navigator.of(context).pushReplacementNamed('/login')
      //           // );
      //         }
      //       )