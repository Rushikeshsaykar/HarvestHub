import 'package:flutter/material.dart';
import 'package:harvesthub/auth/otpverification_screen.dart';
import 'package:harvesthub/auth/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';




void main() async{

  runApp(const MyApp());
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
    
      theme: ThemeData(colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 8, 120, 22))),
      home: SignupScreen()
    );
  }
}


