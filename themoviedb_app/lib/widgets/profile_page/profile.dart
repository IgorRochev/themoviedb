import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMDB"),
      ),
      body: ProfileScreen(
        actions: [
          SignedOutAction((context) {
            Navigator.of(context).pop();
          })
        ],
      ),
    );
  }
}
