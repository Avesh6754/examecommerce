import 'package:examecommerce/Cartscreen/cartscreen.dart';
import 'package:examecommerce/Chcekout/checkoutscreen.dart';
import 'package:examecommerce/detsila/details.dart';
import 'package:examecommerce/home/homescreen.dart';
import 'package:examecommerce/spalshscreen/Splashcreen.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/':(context)=>Spalshscreen(),
        '/home':(context)=>Homescreen(),
        '/detail':(context)=>Detailscreen(),
        '/Cart':(context)=>Cartscreen(),
        '/check':(context)=>Checkoutscreen()
      },
    );
  }
}
