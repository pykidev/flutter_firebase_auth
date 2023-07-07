import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth_demo/auth.dart';
import 'package:flutter_firebase_auth_demo/pages/home.dart';
import 'package:flutter_firebase_auth_demo/pages/login_register.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}): super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context){
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return HomePage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}