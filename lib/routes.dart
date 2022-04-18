import 'dart:js';

import 'package:ecommerce/bottomNavBar/bottomNavBar.dart';
import 'package:flutter/widgets.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/bottomNavBar/bottomNavBar.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
};
