import 'package:demo_login/services/auth.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              dynamic result = await _auth.signInAnon();
              if(result == null) {
                print("Error Signing in");
              } else {
                print("Signed in");
              }
            },
            child: Text("Signin"),
          )
        ],
      ),
    );
  }
}
