import 'package:firebase_auth/firebase_auth.dart';
import 'package:brylan/login.dart';
import 'package:flutter/material.dart';


class SignUpForm extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<SignUpForm> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String name, email, mobile;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blueGrey,
          title: new Text('Create Account',
          style: new TextStyle(
            color: Colors.white
          ),
          ),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _key,
              autovalidate: _validate,
              child: getFormUI(),
            ),
          ),
        ),

    );
  }

  Widget getFormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Full Name'),
          validator: validateName,
          onSaved: (String val) {
            name = val;
          },
        ),
      SizedBox(height: 20.0),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
            onSaved: (String val) {
              email = val;
            }),
       SizedBox(height: 20.0),
       new TextFormField(
            decoration: new InputDecoration(hintText: 'Password'),
            keyboardType: TextInputType.phone,
            validator: validatePassword,
            onSaved: (String val) {
              mobile = val;
            }),           
        new SizedBox(height: 20.0),
        new RaisedButton(
          onPressed: _submit,
          child: new Text('Create Account'),
        ) 
      ],
    );
  }

  String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }
 
   String validateEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if(!regExp.hasMatch(value)){
      return "Invalid Email";
    }else {
      return null;
    }
  }

 String validatePassword(String value) {
    if (value.length == 0) {
      return "Password is Required";
    }else {
      return null;
    }
  }


  _submit() {
    if (_key.currentState.validate()) {
          Navigator.push(
     context,     
     MaterialPageRoute(builder: (context) => LoginPage())
    );
      // No any error in validation
      _key.currentState.save();
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }
}
