import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/Widget/categoryItems.dart';

import 'package:ecommerce/defaultAppBar.dart';
import 'package:ecommerce/screens/NavBar.dart';
import 'package:ecommerce/screens/categoryView.dart';
import 'package:flutter/material.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      drawer: NavBar(),
      appBar: DefaultAppBar(
        title: 'Category',
      ),
      body: Categoryview(
        direction: Axis.vertical,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        column: 2,
        items: categoryList.length,
        ratio: 1.3,
        itemBuilder: (context, index) {
          return Categoryitems(
            height: 150.0,
            width: MediaQuery.of(context).size.width,
            align: Alignment.center,
            radius: kLessPadding,
            color: DarkColor,
            image: categoryList[index].image,
            title: categoryList[index].category,
            titleSize: 18.0,
          );
        },
      ),
    );
  }
}
