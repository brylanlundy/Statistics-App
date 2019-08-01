import 'package:flutter/material.dart';
import 'main.dart';
import 'auth.dart';
import 'package:provider/provider.dart';
class SettingsPage extends StatelessWidget {

@override
Widget build(BuildContext context) {

  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text('Settings'),
      backgroundColor: Colors.blueGrey[300],
    ),
    body: Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
           RaisedButton(
             child: Text("Sign Out"),
             onPressed: () async {
               await Provider.of<AuthService>(context).logout();

                 //Navigator.pushReplacementNamed(context, "/");
             })
        ],
      ),
    ),
  );
}
}



