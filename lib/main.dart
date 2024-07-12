import 'package:flutter/material.dart';
//import 'package:wannaplayfoot/login_screen.dart';
import 'package:wannaplayfoot/splash_screen.dart';
//import 'splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wannaplay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
