import 'package:ecommerce/defaultAppBar.dart';
import 'package:ecommerce/screens/drawer_screen.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: DefaultAppBar(title: ('Cart')),
      body: Center(),
    );
  }
}
