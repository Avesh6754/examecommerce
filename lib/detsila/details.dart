import 'package:examecommerce/home/homescreen.dart';
import 'package:examecommerce/utila/global.dart';
import 'package:flutter/material.dart';

import 'componenet/detailudf.dart';
class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 15,right: 10,),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },child: const Icon(Icons.arrow_back_ios,size: 30,
                    ),
                  ),
                  Spacer(),
                  const Icon(Icons.favorite_outline,size: 30,),
                ],
              ),

            ),
            expandedimage(),
            detailexapand(),

          ],
        ),

      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: GestureDetector(
          onTap: () {
            cart.add(prodctlist[selectedindex]);
            Navigator.of(context).pushNamed('/Cart');
          },
          child: const BottomAppBar(
            height: 60,
            color: Colors.green,
            child: Align(alignment: Alignment.center,child: Text("Add to Cart",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700),)),

          ),
        ),
      ),
    );
  }



}
