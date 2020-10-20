import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You are in the Home Screen", style: TextStyle(fontSize: 18),),
          ElevatedButton(onPressed: () {
            FirebaseAuth.instance.signOut();
          },
          child: Text("Sign out"),)
        ],
      ),
    );
  }
}
