import 'package:flutter/material.dart';
import 'package:posttest5/Splash.dart';
import 'package:posttest5/Detailspage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      home: splashscreen(),
    );
  }
}

