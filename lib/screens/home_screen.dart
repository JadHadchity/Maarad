import 'dart:io';
import 'package:ecommerce/defaultAppBar.dart';
import 'package:ecommerce/screens/NavBar.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:ecommerce/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/bottomNavBar/bottomNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: DefaultAppBar(title: ('Home')),
      body: Center(),
    );
  }
}
