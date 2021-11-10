
import 'package:flutter/material.dart';

class HomeHub extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: new AppBar(
        title: new Text('Home Hub'),
      ),
      body: new Container(
        margin: new EdgeInsets.only(
          top: 50.0
        ),
        alignment: Alignment.center,
        child: new Column(
          children: <Widget>[
            new Text('Custom Feed Here'),
            new FlatButton(
              child: new Text(
                'Logout'
              ),
              onPressed: () {
                // appAuth.logout().then(
                //     (_) => Navigator.of(context).pushReplacementNamed('/login')
                // );
              }
            )
          ],
        ),
      ),
    );
  }
}