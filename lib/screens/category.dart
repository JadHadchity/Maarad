import 'package:ecommerce/screens/NavBar.dart';
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
      drawer: NavBar(),
      appBar: AppBar(title: Text('Category')),
      body: Container(
        height: 200.0,
        width: 200.0,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Text("name");
            }),
      ),
    );
  }
}
