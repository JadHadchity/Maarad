import 'package:ecommerce/Models/CategoryModal.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/screens/category.dart';

const kLess = 4.0;
const height = 200.0;
const width = 200.0;
const radius = 4.0;
const titleSize = 18.0;
const align = Center;
const DarkColor = Color(0xFF303030);
const kWhiteColor = Color(0xFFFFFFFF);
const kLessPadding = 10.0;
const kPrimaryColor = Color(0xFFFF8084);
const kRadius = 4.0;
const kLightColor = Color(0xFF808080);
const kAnimationDuration = Duration(milliseconds: 200);

final categoryList = [
  CategoryModal(image: "assets/images/mercedes.jpg", discount: 10),
  CategoryModal(image: "assets/images/bmw.jpg", discount: 10),
  CategoryModal(image: "assets/images/ferrari.jpg", discount: 10),
  CategoryModal(image: "assets/images/lamborghini.jpg", discount: 10),
  CategoryModal(image: "assets/images/audi.jpg", discount: 10),
  CategoryModal(image: "assets/images/chevrolet.jpg", discount: 10),
  CategoryModal(image: "assets/images/porsche.jpg", discount: 10),
  CategoryModal(image: "assets/images/honda.jpg", discount: 10),
  CategoryModal(image: "assets/images/landrover.jpg", discount: 10),
  CategoryModal(image: "assets/images/nissan.jpg", discount: 10),
  CategoryModal(image: "assets/images/hyundai.jpg", discount: 10),
  CategoryModal(image: "assets/images/jeep.jpg", discount: 10),
];
