import 'package:ecommerce/Models/Parts.dart';
import 'package:ecommerce/screens/NavBar.dart';
import 'package:ecommerce/screens/CarParts.dart';
import 'package:ecommerce/screens/ShowRoom.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:ecommerce/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/Models/parts.dart' as parts;

class hondaPart extends StatelessWidget {
  final Parts parts;
  hondaPart(this.parts);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(parts.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(parts.imageUrl),
            Image.network(parts.imageUrll),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                parts.year.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.5, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                parts.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 22.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class _HondaPartScreenState extends State<hondaPart> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NavBar(),
//       appBar: AppBar(title: Text('Honda')),
//     );
//   }
// }
