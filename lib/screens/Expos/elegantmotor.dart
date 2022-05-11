import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/NavBar.dart';

import 'package:ecommerce/components/coustom_bottom_nav_bar.dart';

import 'package:flutter/material.dart';

class ElegantMotor extends StatefulWidget {
  const ElegantMotor({Key? key}) : super(key: key);

  @override
  _ElegantMotorScreenState createState() => _ElegantMotorScreenState();
}

class _ElegantMotorScreenState extends State<ElegantMotor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Welcome to Elegant Motor'),
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      body: Center(),
    );
  }
}
