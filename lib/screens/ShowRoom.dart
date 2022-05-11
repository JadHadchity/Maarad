import 'dart:io';
import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/main.dart';
import 'package:ecommerce/screens/CarParts.dart';
import 'package:ecommerce/screens/Expos/motorexpo.dart';
import 'package:ecommerce/screens/NavBar.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/profile/profile_screen.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:ecommerce/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/coustom_bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class ShowRoom extends StatefulWidget {
  const ShowRoom({Key? key}) : super(key: key);

  @override
  _ShowRoomScreenState createState() => _ShowRoomScreenState();
}

class _ShowRoomScreenState extends State<ShowRoom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile Demo',
      debugShowCheckedModeBanner: false,
      home: ListTileWidget(),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Show Room'),
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/motorexpo.jpg'),
              radius: 25,
            ),
            title: const Text(
              'Motor expo',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Kaslik, Jounieh'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MotorExpo()));
            },
          ),
        ),
        Container(
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/rkeinmotors.jpg'),
              radius: 25,
            ),
            title: const Text(
              'Rkein Motors',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Mkalles Round, Beirut'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CarParts()));
            },
          ),
        ),
        Container(
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/elegantmotor.jpg'),
              radius: 25,
            ),
            title: const Text(
              'Elegant Motors',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Hankash Street, Beirut'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CarParts()));
            },
          ),
        ),
      ],
    );
  }
}
