
import 'package:flutter/material.dart';
import 'homehub.dart';
import 'profilesettings.dart';
import 'notification_page.dart';

class ProfilePage extends StatelessWidget {
  int _selectedIndex = 0;


  
  // PageController pageController = PageController();
  @override
  Widget build(BuildContext context){
    Color backgroundColor = const Color.fromARGB(255, 36, 37, 45);
    Color iconColor = const Color.fromARGB(255, 36, 37, 45);

    return Scaffold(
      
        appBar: new AppBar(
        centerTitle: true,  
        title: new Text('Profile Page',),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 36, 37, 45),
        selectedItemColor: Color.fromARGB(255, 181, 55, 254),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
       currentIndex: 1, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home,color: Colors.grey,),
           activeIcon: new Icon(Icons.home,color: Color.fromARGB(255, 181, 55, 254),),
           title: new Text('Home'),
           
          
         ),
         
         BottomNavigationBarItem(
           icon: Icon(Icons.notifications, color: Colors.grey,),
           activeIcon: new Icon(Icons.notifications,color: Color.fromARGB(255, 181, 55, 254),),
           title: Text('Notifications'),
           
           
          ),
        
         BottomNavigationBarItem(
           icon: Icon(Icons.person, color: Colors.grey,),
           activeIcon: new Icon(Icons.person,color: Color.fromARGB(255, 181, 55, 254),),
           title: Text('Profile'),
           
           
           
         ),
         
        
         
        
       ],
       onTap: (int x) {
          if(x == 0){// Home Button
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeHub()));
          }else if(x==1){ //PSettingsP button
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PSettingsP()));
          }else if(x == 2){ //Notification Button
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfilePage()));
          }
                  
        },
      
       
     ),
      
      body: new Container(
        color: backgroundColor,
        margin: new EdgeInsets.only(
          top: 0.0,
        ),
        alignment: Alignment.center,
        child: new Column(
          children: <Widget>[
            new Text('Custom Feed Here'),
            
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
            
          ],
        ),
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