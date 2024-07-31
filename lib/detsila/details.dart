import 'package:examecommerce/home/homescreen.dart';
import 'package:examecommerce/utila/global.dart';
import 'package:flutter/material.dart';
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
        padding:EdgeInsets.only(top: 30),
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
                    },child: Icon(Icons.arrow_back_ios,size: 30,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.favorite_outline,size: 30,),
                ],
              ),

            ),
            Expanded(
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
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
              
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${prodctlist[selectedindex]['name']}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      SizedBox(height: 5,),

                      Text("\$${prodctlist[selectedindex]['price']}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.green),),
                      Text("⭐${prodctlist[selectedindex]['rate']}",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 15,),
                      Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: 15,),
                      Text('Description',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                      Text('${prodctlist[selectedindex]['description']}',style: TextStyle(fontSize: 13))

                    ],
                  ),
                ),
              ),
            ),

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
          child: BottomAppBar(
            height: 60,
            color: Colors.green,
            child: Align(alignment: Alignment.center,child: Text("Add to Cart",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700),)),

          ),
        ),
      ),
    );
  }
}
