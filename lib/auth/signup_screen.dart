import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 114, 46),
      body: Column(children: [
    
    Container(width: double.infinity, height: double.infinity,color: Colors.white,
      child: Column(children: [],),
    )
  ],
),
    );
  }
}
