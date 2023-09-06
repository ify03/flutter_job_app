import 'package:flutter/material.dart';
import 'package:myflutter/pages/contactpage.dart';
import 'package:myflutter/pages/registerpage.dart';

import 'pages/about.dart';
import 'pages/applied.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';
import 'pages/onboradingpage.dart';
import 'pages/qualifications.dart';
import 'pages/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: OnboardingScreen (),
      ),
    );
  }
}
