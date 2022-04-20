import 'package:ecommerce/Models/CategoryModal.dart';
import 'package:ecommerce/size_config.dart';
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
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const defaultDuration = Duration(milliseconds: 250);
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
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
