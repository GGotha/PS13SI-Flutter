import 'package:flutter/material.dart';
import 'package:ps13si/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(milliseconds: 3000),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
    );

    return Scaffold(
      body: Center(
        child: Text(
          'PS13SI',
          style: TextStyle(fontSize: 42),
        ),
      ),
    );
  }
}
