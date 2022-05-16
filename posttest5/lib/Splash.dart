import 'dart:async';
import 'package:flutter/material.dart';
import 'package:posttest5/Homepage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({ Key? key }) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    start();
  }

  start(){
    final duration = Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(
        "splash.png",
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),),
    );
  }
}