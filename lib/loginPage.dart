import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Login Page'),
        centerTitle: true,
      ),
      body: Center(
        child:RaisedButton(onPressed: (){
          FirebaseAuth.instance.signInWithEmailAndPassword(
            email: 'nymphetamine90@gmail.com',
             password: 'Ujj615456');
             
            //  Navigator.of(context).push(
            //    MaterialPageRoute(
            //      builder: (context){
            //       return Dashboard();
            //      }),
            //  );
        },
        color: Colors.teal,
        child: Text('Login'),)
      ),
      
    );
  }
}