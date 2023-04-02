import 'dart:ffi';

import 'package:auth_app/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Home Screen'),
            ElevatedButton(onPressed: logout, child: Text('Logout')),
          ],
        ),
      ),
    );
  }

  logout() {
    FirebaseAuth.instance.signOut().then((value) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login())));
  }
}
