import 'dart:async';

import 'package:flutter/material.dart';

class Spalshscreen extends StatefulWidget {
  const Spalshscreen({super.key});

  @override
  State<Spalshscreen> createState() => _SpalshscreenState();
}

class _SpalshscreenState extends State<Spalshscreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() {
      Navigator.of(context).pushReplacementNamed('/home');
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text('ShopsyMart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
      ),
    );
  }
}
