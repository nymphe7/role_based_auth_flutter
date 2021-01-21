

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:role_based_authorization/adminOnly.dart';
import 'package:role_based_authorization/loginPage.dart';

import '../dashboard.dart';

class UserManagement {
  Widget handleAuth(){
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder:(BuildContext context, snapshot){
        // if(snapshot.connectionState == ConnectionState.waiting{}
        if(snapshot.hasData){
          return Dashboard();
        }
        return LoginPage();
      });
  }

  accessAuthorized(BuildContext context){
    final user = FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance
        .collection('profile')
        .where('uid',isEqualTo:user.uid)
        .get()
        .then((doc){
           if(doc.docs[0].exists){
             if(doc.docs[0].data()['role'] == 'admin'){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                      return AdminOnly();
                  }),
                );
             }
             else{
               print('Not Authorized');
             }
           }
        });
  }

  
  signOut() {
    FirebaseAuth.instance.signOut();
  }

  
}