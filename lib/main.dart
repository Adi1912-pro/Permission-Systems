import 'package:flutter/material.dart';
import 'package:nitc_venue_permission_app/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NITC Venue Booking App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[500],
        primarySwatch: Colors.yellow,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.yellow,
        ).copyWith(
          secondary: Colors.grey,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.yellow[300],
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
