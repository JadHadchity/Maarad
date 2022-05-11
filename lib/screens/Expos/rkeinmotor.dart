import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/NavBar.dart';

import 'package:ecommerce/components/coustom_bottom_nav_bar.dart';

import 'package:flutter/material.dart';

class RkeinMotor extends StatefulWidget {
  const RkeinMotor({Key? key}) : super(key: key);

  @override
  _RkeinMotorScreenState createState() => _RkeinMotorScreenState();
}

class _RkeinMotorScreenState extends State<RkeinMotor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Welcome to Rkein Motor'),
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      body: Center(),
    );
  }
}
