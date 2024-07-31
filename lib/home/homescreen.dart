import 'package:examecommerce/utila/global.dart';
import 'package:flutter/material.dart';

import 'component/home_udf.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: row1(),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: row2(),
              ),
              const SizedBox(
                height: 20,
              ),
              row3(),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        prodctlist.length,
                            (index) =>
                            GestureDetector(
                                onTap: () {
                                  selectedindex = index;
                                  Navigator.of(context).pushNamed('/detail');
                                },
                                child: productmethod(
                                    price: prodctlist[index]['price'],
                                    name: prodctlist[index]['name'],
                                    rate: prodctlist[index]['rate'],
                                    image: prodctlist[index]['image'])))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              row4(),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(category.length,
                            (index) => categoruudf(category[index]))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(children: [
                ...List.generate(
                    prodctlist.length,
                        (index) =>
                        GestureDetector(
                            onTap: () {
                              selectedindex = index;
                              Navigator.of(context).pushNamed('/detail');
                            },
                            child: speculd(
                                price: prodctlist[index]['price'],
                                name: prodctlist[index]['name'],
                                rate: prodctlist[index]['rate'],
                                image: prodctlist[index]['image'])))
              ]),
            ],
          ),
        ),
      ),
    );
  }



}

var selectedindex = -1;
