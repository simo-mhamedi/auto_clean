import 'package:auto_clean/screens/auth/login.dart';
import 'package:auto_clean/screens/authProcess/choose_mark.dart';
import 'package:auto_clean/screens/authProcess/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:auto_clean/map/map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white
      ),
      home: LoginPage(),
    );
  }
}
