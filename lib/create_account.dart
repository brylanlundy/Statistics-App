// import 'package:brylan/main.dart';
// import 'package:flutter/material.dart';
// import 'home.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'login.dart';

// void main() => runApp(new MyApp());
// final FirebaseAuth mAuth = FirebaseAuth.instance;
// final TextEditingController _nameFilter = new TextEditingController();
// final TextEditingController _emailFilter = new TextEditingController();
// final TextEditingController _usernameFilter = new TextEditingController();
// final TextEditingController _passwordFilter = new TextEditingController();

// class SignUpPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Simple Login Demo',
//       theme: new ThemeData(primarySwatch: Colors.blue),
//       home: new LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => new _LoginPageState();
// }

// // Used for controlling whether the user is loggin or creating an account
// enum FormType { login, register }

// class _LoginPageState extends State<LoginPage> {
//   String _name = "";
//   String _email = "";
//   String _username = "";
//   String _password = "";
//   FormType _form = FormType
//       .login; // our default setting is to login, and we should switch to creating an account when the user chooses to

//   _LoginPageState() {
//     _nameFilter.addListener(_nameListen);
//     _emailFilter.addListener(_emailListen);
//     _usernameFilter.addListener(_usernameListen);
//     _passwordFilter.addListener(_passwordListen);
//   }

//   void _nameListen() {
//     if (_nameFilter.text.isEmpty) {
//       _name = "";
//     } else {
//       _name = _nameFilter.text;
//     }
//   }

//   void _emailListen() {
//     if (_emailFilter.text.isEmpty) {
//       _email = "";
//     } else {
//       _email = _emailFilter.text;
//     }
//   }

//   void _usernameListen() {
//     if (_usernameFilter.text.isEmpty) {
//       _username = "";
//     } else {
//       _username = _usernameFilter.text;
//     }
//   }

//   void _passwordListen() {
//     if (_passwordFilter.text.isEmpty) {
//       _password = "";
//     } else {
//       _password = _passwordFilter.text;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: _buildBar(context),
//       body: new Container(
//         padding: EdgeInsets.all(16.0),
//         child: new Column(
//           children: <Widget>[
//             _buildTextFields(),
//             _buildButtons(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildBar(BuildContext context) {
//     return new AppBar(
//       backgroundColor: Colors.blueGrey[300],
//       title: new Text("Create Account"),
//       centerTitle: true,
//     );
//   }

//   Widget _buildTextFields() {
//     return new Container(
//       child: new Column(
//         children: <Widget>[
//           new Container(
//             child: new TextFormField(
//               controller: _nameFilter,
//               decoration: new InputDecoration(labelText: 'Full Name'),
//             ),
//           ),
//           new Container(
//             child: new TextFormField(
//               controller: _emailFilter,
//               decoration: new InputDecoration(labelText: 'Email'),
//             ),
//           ),
//           new Container(
//             child: new TextFormField(
//               controller: _usernameFilter,
//               decoration: new InputDecoration(labelText: 'Username'),
//             ),
//           ),
//           new Container(
//             child: new TextFormField(
//               controller: _passwordFilter,
//               decoration: new InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   _buildButtons() {
//     if (_form == FormType.login) {
//       return new Container(
//         child: new Column(
//           children: <Widget>[
//             FlatButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => LoginPage()));
//               },
//               child: new Text('Login'),
//             ),
//             RaisedButton(
//                 child: new Text('Create Account'),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => HomePage()),
//                   );
//                 }),
//           ],
//         ),
//       );
//     }
//   }

//   // These functions can self contain any user auth logic required, they all have access to _email and _password

//   void _createAccountPressed() {
//     print(
//         'The user wants to create an account with name $_name, email $_email, username $_username and password $_password');
//   }

//   void signUpWithEmailPassword() async {
//     FirebaseUser user;
//     user = await mAuth.createUserWithEmailAndPassword(
//         email: _emailFilter.text, password: _passwordFilter.text);
//   }

//   void _passwordReset() {
//     print("The user wants a password reset request sent to $_email");
//   }
// }
