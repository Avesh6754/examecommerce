import 'package:flutter/material.dart';

import '../../home/homescreen.dart';
import '../../utila/global.dart';


Expanded detailexapand() {
  return Expanded(
    child: Container(
      height: double.infinity,
      width: double.infinity,

      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${prodctlist[selectedindex]['name']}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 5,),

            Text("\$${prodctlist[selectedindex]['price']}",style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.green),),
            Text("⭐${prodctlist[selectedindex]['rate']}",style: const TextStyle(fontSize: 15),),
            const SizedBox(height: 15,),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 15,),
            const Text('Description',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
            Text('${prodctlist[selectedindex]['description']}',style: const TextStyle(fontSize: 13))

          ],
        ),
      ),
    ),
  );
}

Expanded expandedimage() {
  return Expanded(
    child: Container(
      height: double.infinity,
      width: double.infinity,

      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("${prodctlist[selectedindex]['image']}"),
              fit: BoxFit.cover
          )
      ),
    ),
  );
}