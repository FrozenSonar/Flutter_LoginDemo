import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/About.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('We solve crimes.',
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 18,
                    )),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigate back to first screen when tapped.
                  },
                  child: Text('Go back!'),
                ),
              ],
            ))));
  }
}
