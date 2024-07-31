import 'package:examecommerce/utila/global.dart';
import 'package:flutter/material.dart';

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
                child: Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black45,width: 2),
                        // color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage('assets/image/download.png'),
                          fit: BoxFit.cover
                        )

                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Welcome\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700)),
                          TextSpan(
                            text: 'Avesh',
                            style: TextStyle(
                                fontSize: 25,
                                height: 1,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.favorite_outline,
                      size: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.grey,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Icon(
                      Icons.filter_alt_outlined,
                      size: 35,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Specail Offer",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        prodctlist.length,
                        (index) => GestureDetector(
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
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
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
              SizedBox(
                height: 20,
              ),
              Wrap(children: [
                ...List.generate(
                    prodctlist.length,
                    (index) => GestureDetector(
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

  Column speculd(
      {required String name,
      required double price,
      required double rate,
      required var image}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: 180,
          margin: EdgeInsets.only(right: 29),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        Text(
          '$name',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
        Text(
          '⭐$rate',
          style: TextStyle(fontSize: 15),
        ),
        Text(
          "\$ ${price.toInt()}",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: Colors.green),
        ),
      ],
    );
  }

  Container categoruudf(String name) {
    return Container(
      height: 40,
      width: 80,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2.5),
        borderRadius: BorderRadius.circular(25),
      ),
      alignment: Alignment.center,
      child: Text(
        "$name ",
        style: TextStyle(fontSize: 20, color: Colors.green),
      ),
    );
  }

  Column productmethod(
      {required String name,
      required double price,
      required double rate,
      required var image}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: 180,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover)),
        ),
        Text(
          '$name',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
        Text(
          '⭐$rate',
          style: TextStyle(fontSize: 15),
        ),
        Text(
          "\$ ${price.toInt()}",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: Colors.green),
        ),
      ],
    );
  }
}

var selectedindex = -1;
