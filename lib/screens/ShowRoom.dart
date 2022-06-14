import 'package:ecommerce/Controllers/data_controller.dart';
import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/addproduct_screen.dart';
import 'package:ecommerce/screens/drawer_screen.dart';

import 'package:ecommerce/components/coustom_bottom_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowRoom extends StatelessWidget {
  final DataController controller = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text('All Cars List'),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(() => AddProductScreen());
                },
                icon: Icon(Icons.add))
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
        body: GetBuilder<DataController>(
          builder: (controller) => controller.allProduct.isEmpty
              ? Center(
                  child: Text('😔 NO DATA FOUND (: 😔'),
                )
              : ListView.builder(
                  itemCount: controller.allProduct.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            child: Image.network(
                              controller.allProduct[index].productimage,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Product Name: ${controller.allProduct[index].productname}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Price: ${controller.allProduct[index].productprice.toString()}',
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
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () => launch(
                                        "tel:${controller.allProduct[index].phonenumber.toString()}"),
                                    child: Text('CALL'),
                                  ),
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
      ),
    );
  }
}
