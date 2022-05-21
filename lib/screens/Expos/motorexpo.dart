import 'package:ecommerce/Controllers/data_controller.dart';
import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/NavBar.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/components/coustom_bottom_nav_bar.dart';
import 'package:ecommerce/screens/addproduct_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MotorExpo extends StatefulWidget {
  const MotorExpo({Key? key}) : super(key: key);

  @override
  _MotorExpoScreenState createState() => _MotorExpoScreenState();
}

class _MotorExpoScreenState extends State<MotorExpo> {
  final DataController controller = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Welcome to Rkein Motor'),
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => AddProductScreen());
              },
              icon: Icon(Icons.add))
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      body: Center(),
    );
  }
}
