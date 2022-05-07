import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/NavBar.dart';

import 'package:ecommerce/components/coustom_bottom_nav_bar.dart';

import 'package:flutter/material.dart';

class MotorExpo extends StatefulWidget {
  const MotorExpo({Key? key}) : super(key: key);

  @override
  _MotorExpoScreenState createState() => _MotorExpoScreenState();
}

class _MotorExpoScreenState extends State<MotorExpo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Welcome to Motor Expo'),
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      body: Center(),
    );
  }
}
