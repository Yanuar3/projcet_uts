import 'package:flutter/material.dart';
import 'package:flutter_application_test/homepage.dart';
import 'package:flutter_application_test/login.dart';
import 'package:flutter_application_test/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
