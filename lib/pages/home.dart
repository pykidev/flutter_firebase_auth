import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth_demo/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_auth_demo/pages/firestore_read.dart';


CollectionReference students =
    FirebaseFirestore.instance.collection('students');

Future<void> addStudent(fullName, grade, age) {
  return students
      .add({'full_name': fullName, 'grade': grade, 'age': age})
      .then((value) => print("Student data added"))
      .catchError((error) => print("Student couldn't be added"));
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('Firebase Auth');
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User email');
  }

  Widget _signOutButton() {
    return ElevatedButton(onPressed: signOut, child: const Text('Sign out'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _title(),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(20.0),
          child: Column(children: <Widget>[_userUid(), _signOutButton(), Container(
            child: GetStudentName('1')
          )]),
        ));
  }
}
