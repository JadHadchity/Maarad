import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/screens/drawer_screen.dart';
import 'package:ecommerce/screens/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/coustom_bottom_nav_bar.dart';
import 'package:ecommerce/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
