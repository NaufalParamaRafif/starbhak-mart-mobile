import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart'; // Import the main.dart file or adjust the import path accordingly

void main() {
  runApp(SplashScreenApp());
}

class SplashScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      // ... other configurations for your app
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen
    Timer(
      Duration(seconds: 3), // Adjust the duration as needed
      () {
        // Navigate to the main screen after the splash screen
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => MainPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.store_mall_directory_outlined)
      ),
    );
  }
}
