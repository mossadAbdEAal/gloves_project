import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'profile',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.brown),
      )),
    );
  }
}
