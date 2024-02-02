import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/notification.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/bag.png"),
          ),
        ],
        title: const Text(
          'Signp to Beetechstor',
          style: TextStyle(
            color: Color(0xFF1F2937),
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0.07,
            letterSpacing: 0.10,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Login with Google"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Login with Facebook"),
            ),
          ],
        ),
      ),
    );
  }
}
