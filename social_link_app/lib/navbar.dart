import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'notification_page.dart';
import 'profile_edit.dart';
import 'homehub.dart';


class NavBar extends StatefulWidget {
  int index;

  NavBar({Key? key, required this.index}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 36, 37, 45),
        selectedItemColor: Color.fromARGB(255, 181, 55, 254),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
       currentIndex: widget.index, // this will be set when a new tab is tapped
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
         if(x != widget.index){
          if(x == 0){// Home Button
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeHub()));
          }else if(x==1){ //Settings button
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NotificationPage()));
          }else if(x == 2){ //Notification Button
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => UserAccount()));
          }
         }
                  
        },
      //  //  currentIndex: _selectedIndex,
      // //  selectedItemColor: Color.fromARGB(255, 142, 63, 255),
      // currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
       
     );
  }
}