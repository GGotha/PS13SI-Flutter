import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ps13si/models/notification_model.dart';
import 'package:ps13si/screens/course_details_screen.dart';
import 'package:ps13si/screens/home_screen.dart';
import 'package:ps13si/screens/login_screen.dart';
import 'package:ps13si/screens/splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: NotificationModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PS13SI',
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        initialRoute: "/",
        routes: {
          "/": (context) => SplashScreen(),
          "/login": (context) => LoginScreen(),
          "/home": (context) => HomeScreen(),
          "/course-details": (context) => CourseDetailsScreen(),
        },
      ),
    );
  }
}
