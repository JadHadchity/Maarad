import 'package:ecommerce/screens/CarParts.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/showRoom.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('User'),
            accountEmail: Text('gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => print('Favorite'),
          ),
          ListTile(
            leading: Icon(Icons.garage),
            title: Text('Expo\'s car'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ShowRoom()));
            },
          ),
          ListTile(
            leading: Icon(Icons.car_rental),
            title: Text('Car Parts'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CarParts()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_outlined),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
            },
          ),
        ],
      ),
    );
  }
}
