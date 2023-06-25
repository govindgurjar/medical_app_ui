import 'package:flutter/material.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Profile Page',
          style: TextStyle(color: Colors.black),
        )
      ])),
    );
  }
}
