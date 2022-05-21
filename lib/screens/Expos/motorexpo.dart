import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/Controllers/data_controller.dart';
import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/NavBar.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/components/coustom_bottom_nav_bar.dart';
import 'package:ecommerce/screens/addproduct_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MotorExpo extends StatelessWidget {
  final DataController controller = Get.put(DataController());
  final DataController controller2 = Get.find();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((Timestamp) {
      controller.getLoginUserProduct();
    });
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Welcome to Motor Expo'),
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(AddProductScreen());
              },
              icon: Icon(Icons.add))
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      body: GetBuilder<DataController>(
        builder: (controller) => controller.loginUserData.isEmpty
            ? Center(
                child: Text('Loading Cars...'),
              )
            : ListView.builder(
                itemCount: controller.loginUserData.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          child: Image.network(
                            controller.loginUserData[index].productimage,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Product Name: ${controller.loginUserData[index].productname}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Price: ${controller.loginUserData[index].productprice.toString()}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Edit'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Delete'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
