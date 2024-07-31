

import 'package:examecommerce/utila/global.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.of(context).pushReplacementNamed('/home');
        },child: const Icon(Icons.arrow_back_ios,size: 30,)),
        title: const Text("Cart",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(cart.length,(index)=>cartudf(name: cart[index]['name'],price: cart[index]['price'],image: cart[index]['image'],index: index))
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/check');
          },
          child: const BottomAppBar(
            height: 60,
            color: Colors.green,
            child: Align(alignment: Alignment.center,child: Text("Checkout",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700),)),

          ),
        ),
      ),
    );

  }
  ListTile cartudf({required String name,required double price,required var image,required var index}) {
    return ListTile(
      leading: Image.asset(image),
      title: Text("${name}",style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
      subtitle: Text("\$${price.toInt()}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
      trailing: InkWell(onTap: () {
        setState(() {
          cart.removeAt(index);
        });
      },child: const Icon(Icons.delete)),
    );
  }
}


