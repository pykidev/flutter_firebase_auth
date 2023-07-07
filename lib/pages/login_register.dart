import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth_demo/auth.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController pwdCtrl = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(email: emailCtrl.text, password: pwdCtrl.text);
    }
    on FirebaseAuthException catch(e) {
      setState((){
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(email: emailCtrl.text, password: pwdCtrl.text);
    }
    on FirebaseAuthException catch(e) {
      setState((){
        errorMessage = e.message;
      });
      
    }
  }

  Widget _title(){
    return const Text('Firebase Auth');
  }

  Widget _entryField(String title, TextEditingController ctrl){
    return  TextField(
      controller: ctrl,
      decoration: InputDecoration(labelText: title),
    );
  }

  Widget _errorMessage(){
    return Text(errorMessage == '' ? '': '$errorMessage');
  }

  Widget _submitButton() {
    return ElevatedButton(onPressed: isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword, 
    child: Text(isLogin ? 'Login': 'Register'));
  }

  Widget _loginOrRegisterButton() {
    return ElevatedButton(onPressed: () {
    setState(() {
      isLogin = !isLogin;    
    });}, 
    child: Text(isLogin ? 'Register instead': 'Login instead'));
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Column(children: [_entryField('email', emailCtrl), _entryField('password', pwdCtrl), _errorMessage(), _submitButton(), _loginOrRegisterButton()]),
    );
  }
}