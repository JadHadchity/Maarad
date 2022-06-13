import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/drawer_screen.dart';

import 'package:ecommerce/components/coustom_bottom_nav_bar.dart';
import 'package:ecommerce/screens/drawer_screen.dart';

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
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Car Parts'),
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      body: Center(),
    );
  }
}
