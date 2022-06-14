import 'package:ecommerce/Controllers/auth_controller.dart';
import 'package:ecommerce/Controllers/data_controller.dart';
import 'package:ecommerce/screens/ShowRoom.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/login_user_product_screen.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';

class AppDrawer extends StatelessWidget {
  final AuthController _auth = AuthController();
  final DataController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 220,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Welcome, ${controller.userProfileData['userName']}',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    FittedBox(
                      child: Text(
                        'Join Date :${DateFormat.yMMMMd().format(DateTime.fromMillisecondsSinceEpoch(controller.userProfileData['joinDate']))} ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: const Text('Your Product'),
                onTap: () {
                  Get.back();
                  Get.to(() => LoginUserProductScreen());
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: const Text('Home'),
                onTap: () {
                  Get.to(() => HomeScreen());
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: const Text('Show Room'),
                onTap: () {
                  Get.to(() => ShowRoom());
                },
              ),
              ListTile(
                  leading: Icon(Icons.logout),
                  title: const Text('LogOut'),
                  onTap: () async {
                    await _auth.signOut();
                    Get.off(() => LoginScreen());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
