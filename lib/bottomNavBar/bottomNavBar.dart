import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/screens/Account.dart';
import 'package:ecommerce/screens/category.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/bottomNavBar/bottomNavBar.dart';
import 'package:ecommerce/screens/category.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    category(),
    Account(),
  ];

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: _currentIndex,
        elevation: kLess,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'category',
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            label: 'Setting',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
