import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:role_based_authorization/services/usermanagement.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: UserManagement().handleAuth(),
     
    );
  }
}

