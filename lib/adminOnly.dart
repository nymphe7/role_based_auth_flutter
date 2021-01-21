import 'package:flutter/material.dart';

class AdminOnly extends StatefulWidget {
  @override
  _AdminOnlyState createState() => _AdminOnlyState();
}

class _AdminOnlyState extends State<AdminOnly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Admins only'),
        centerTitle:true,
      ),
      body: Text('Admin'),
      
    );
  }
}