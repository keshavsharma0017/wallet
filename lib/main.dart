import 'package:flutter/material.dart';
import 'package:project3/constant/route.dart';
import 'package:project3/views/homepage.dart';
import 'package:project3/views/login.dart';

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
      title: 'Expense tracker',
      routes: {
        homeRoute: (context) => const Homepage(),
        loginRoute: (context) => const Loginpage(),
      },
      home: const Homepage(),
    );
  }
}
