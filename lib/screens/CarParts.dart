import 'package:ecommerce/Models/Parts.dart';
import 'package:ecommerce/screens/NavBar.dart';
import 'package:ecommerce/screens/CarParts.dart';
import 'package:ecommerce/screens/ShowRoom.dart';
import 'package:ecommerce/screens/hondaParts.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:ecommerce/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/Models/parts.dart' as parts;
import 'hondaParts.dart';
import 'package:ecommerce/screens/hondaParts.dart';

class CarParts extends StatefulWidget {
  const CarParts({Key? key}) : super(key: key);

  @override
  _CarPartsScreenState createState() => _CarPartsScreenState();
}

class _CarPartsScreenState extends State<CarParts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(title: Text('Car Parts')),
      body: ListView.builder(
          itemCount: partList.length,
          itemBuilder: (context, index) {
            Parts parts = partList[index];
            return Card(
                child: ListTile(
                    title: Text(parts.title),
                    subtitle: Text(parts.year.toString()),
                    leading: Image.network(parts.imageUrl),
                    trailing: Icon(Icons.arrow_forward_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => hondaPart(parts)));
                    }));
          }),
    );
  }
}
  
  


// class CarsParts extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView.builder(
//             itemCount: partList.length,
//             itemBuilder: (context, index) {
//               Parts parts = partList[index];
//               return Text(parts.title);
//             }));
//   }
// }
