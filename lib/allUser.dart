import 'package:flutter/material.dart';

class AllUserPage extends StatefulWidget {
  @override
  _AllUserPageState createState() => _AllUserPageState();
}

class _AllUserPageState extends State<AllUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('AllUsers allowed'),
        centerTitle: true,
      ),
      
    );
  }
}