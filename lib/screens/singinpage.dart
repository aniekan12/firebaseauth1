import 'package:flutter/material.dart';
import 'package:sign_in_with_fire/services/fireauth.dart';

class SignInPage extends StatelessWidget {
  FireAuth _auth = FireAuth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(140.0),
            child: ElevatedButton(
              onPressed: () async {
                await _auth.signin();
              },
              child: Text('Sign in anon'),
            ),
          ),
        ],
      )),
    );
  }
}
