import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wannaplayfoot/login_screen.dart';
//import 'package:wannaplayfoot/splash_screen.dart';
//import 'splash_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();

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
      home: const LoginScreen(),
    );
  }
}
