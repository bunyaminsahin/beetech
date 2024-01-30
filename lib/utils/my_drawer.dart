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
              color: Color(0xFFEF4444),
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
            title: const Text('Home Page'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Categories'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('My Card'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
