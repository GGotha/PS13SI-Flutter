import 'package:flutter/material.dart';
import 'package:ps13si/screens/home_screen.dart';
import 'package:ps13si/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PS13SI',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
