import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FireAuth {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signin() async {
    try {
      await _auth.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }
}
