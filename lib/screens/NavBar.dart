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
            onTap: () => print('Home'),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => print('Favorite'),
          ),
          ListTile(
            leading: Icon(Icons.garage),
            title: Text('Expo\'s car'),
            onTap: () => print('Expo'),
          ),
          ListTile(
            leading: Icon(Icons.car_rental),
            title: Text('Car Parts'),
            onTap: () => print('Car Parts'),
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
