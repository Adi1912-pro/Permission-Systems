import 'package:flutter/material.dart';
import 'package:nitc_venue_permission_app/auth/login_screen.dart';
import 'package:nitc_venue_permission_app/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // after 3 seconds, navigate to the home page
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Welcome, to NITC Venue Booking App',
        style: TextStyle(
          fontSize: 40,
        ),
        textAlign: TextAlign.center,
      )),
    );
  }
}
