import 'package:ecommerce/screens/NavBar.dart';
import 'package:flutter/material.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  _categoryScreenState createState() => _categoryScreenState();
}

class _categoryScreenState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(title: Text('Category')),
      body: Center(),
    );
  }
}
