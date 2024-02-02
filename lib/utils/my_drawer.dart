import 'package:beetech_app/auth/login_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFECFDF5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BS',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'developer.bunyamin.sahin@gmail.com',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/home.png",
              width: 24,
              height: 24,
            ),
            title: const Text(
              'Home Page',
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.grid_view),
            title: const Text(
              'Categories',
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.access_time),
            title: const Text(
              'Orders',
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined),
            title: const Text(
              'Profile',
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoginPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
