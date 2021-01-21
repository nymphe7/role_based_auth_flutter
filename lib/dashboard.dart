import 'package:flutter/material.dart';
import 'package:role_based_authorization/adminOnly.dart';
import 'package:role_based_authorization/loginPage.dart';
import 'package:role_based_authorization/services/usermanagement.dart';

import 'allUser.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Dashboard'),
        centerTitle:true,
      ),
      drawer: Drawer(
        child:ListView(
          children:[
            UserAccountsDrawerHeader(
              accountName: Text('Nymphe'),
               accountEmail: Text('nymphetamine70@yahoo.com'),
               currentAccountPicture: CircleAvatar(
                 backgroundImage:NetworkImage('https://unsplash.com/photos/aJdL_z7gwNY'),
                 radius: 100,
               ),),
               ListTile(
                 title: Text('Admin only'),
                 onTap: (){
                   UserManagement().accessAuthorized(context);
                 },
               ),
               ListTile(
                 title: Text('AllUsers page'),
                 onTap: (){
                   Navigator.of(context).pop();
                   Navigator.of(context).push(
                     MaterialPageRoute(builder: (context){
                        return AllUserPage();
                     }),
                   );
                 },),
                 
                 ListTile(
                   title: Text('Logout'),
                   onTap: (){
                     UserManagement().signOut();
                   },
                   )
          ]
        )
      ),
      body: Center(
        child:Text('Dashboard') ,),
      
    );
  }
}