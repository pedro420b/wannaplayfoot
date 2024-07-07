import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'profil_screen.dart';
//import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _navigateToHome();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5));
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SplashScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/splash_animation.json',
          controller: _controller,
          onLoaded: (composition) {
            _controller
              ..duration = composition.duration
              ..forward();
          },
        ),
      ),  bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: const Color.fromARGB(255, 61, 95, 154),
    items: const <Widget>[
      Icon(Icons.home, size: 20),
      Icon(Icons.verified_user, size: 20),
      Icon(Icons.map, size: 20),
      Icon(Icons.add, size: 20),
      Icon(Icons.search, size: 20),
      Icon(Icons.message, size: 20),
      Icon(Icons.notification_important, size: 20),
      Icon(Icons.settings, size: 20),

    ],
    onTap: (index) {
      //Handle button tap
      if (index==1)
     { Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ProfileScreen()),
    );
     }
    },
  ),
    );
  }
}
