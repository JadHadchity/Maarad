import 'package:ecommerce/screens/ShowRoom.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  ;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      navigatorKey: Get.key,
    );
  }
}
