import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
      body: ElevatedButton(
          onPressed: () {}, child: const Text("Signup with Google")),
    );
  }
}
