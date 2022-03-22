import 'dart:io';
import 'package:ecommerce/screens/NavBar.dart';
import 'package:ecommerce/screens/CarParts.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:ecommerce/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CarParts extends StatefulWidget {
  const CarParts({Key? key}) : super(key: key);

  @override
  _CarPartsScreenState createState() => _CarPartsScreenState();
}

class _CarPartsScreenState extends State<CarParts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(title: Text('Car Parts')),
      body: Center(),
    );
  }
}
