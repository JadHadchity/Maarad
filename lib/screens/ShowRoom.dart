import 'dart:io';
import 'package:ecommerce/screens/NavBar.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:ecommerce/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ShowRoom extends StatefulWidget {
  const ShowRoom({Key? key}) : super(key: key);

  @override
  _ShowRoomScreenState createState() => _ShowRoomScreenState();
}

class _ShowRoomScreenState extends State<ShowRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(title: Text('Show Roomm')),
      body: Center(),
    );
  }
}
