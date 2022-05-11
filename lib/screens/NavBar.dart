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
          const UserAccountsDrawerHeader(
            accountName: const Text('User'),
            accountEmail: const Text('gmail.com'),
            currentAccountPicture: const CircleAvatar(
              child: const ClipOval(),
            ),
            decoration: const BoxDecoration(
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
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorites'),
            onTap: () => print('Favorite'),
          ),
          ListTile(
            leading: const Icon(Icons.garage),
            title: const Text('Expo\'s car'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShowRoom()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.car_rental),
            title: const Text('Car Parts'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CarParts()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app_outlined),
            title: const Text('Logout'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignInScreen()));
            },
          ),
        ],
      ),
    );
  }
}
