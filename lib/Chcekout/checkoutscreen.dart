import 'package:flutter/material.dart';

import '../utila/global.dart';
class Checkoutscreen extends StatefulWidget {
  const Checkoutscreen({super.key});

  @override
  State<Checkoutscreen> createState() => _CheckoutscreenState();
}

class _CheckoutscreenState extends State<Checkoutscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.of(context).pop();
        },child: const Icon(Icons.arrow_back_ios,size: 30,)),
        title: const Text("Checkout",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,

      ),
      body:SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            flex: 5,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...List.generate(cart.length,(index)=>checktudf(name: cart[index]['name'],price: cart[index]['price'],)),
                ],
              ) ,
            ),
          ),

        ],
      ),),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          },
          child: BottomAppBar(
            height: 60,
            color: Colors.green,
            child: Align(alignment: Alignment.center,child: Text("Total Amount \$${sum(cart).toInt()}/-",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700),)),

          ),
        ),
      ),
    );
  }
}
ListTile checktudf({required String name,required double price,}) {
  return ListTile(
    title: Text("$name",style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
    trailing: Text("\$${price.toInt()}",style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
    
  );
  
  
}

double sum(List cart)
{
  dynamic sum=0,amount=0;
  for(int i=0;i<cart.length;i++)
    {
      sum=sum+cart[i]['price'];
    }
  amount=amount+(sum/18)*100;
  return amount;
}

