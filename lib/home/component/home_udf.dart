import 'package:flutter/material.dart';

Row row1() {
  return Row(
    children: [
      Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black45,width: 2),
            // color: Colors.black,
            image: const DecorationImage(
                image: AssetImage('assets/image/download.png'),
                fit: BoxFit.cover
            )

        ),
      ),
      const Text.rich(
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
      const Spacer(),
      const Icon(
        Icons.shopping_cart_outlined,
        size: 30,
      ),
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.favorite_outline,
        size: 30,
      ),
    ],
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
        margin: const EdgeInsets.only(right: 29),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(15),
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
      Text(
        '$name',
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
      ),
      Text(
        '⭐$rate',
        style: const TextStyle(fontSize: 15),
      ),
      Text(
        "\$ ${price.toInt()}",
        style: const TextStyle(
            fontWeight: FontWeight.w700, fontSize: 20, color: Colors.green),
      ),
    ],
  );
}

Container categoruudf(String name) {
  return Container(
    height: 40,
    width: 80,
    margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.green, width: 2.5),
      borderRadius: BorderRadius.circular(25),
    ),
    alignment: Alignment.center,
    child: Text(
      "$name ",
      style: const TextStyle(fontSize: 20, color: Colors.green),
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
        margin: const EdgeInsets.only(right: 20),
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
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
      ),
      Text(
        '⭐$rate',
        style: const TextStyle(fontSize: 15),
      ),
      Text(
        "\$ ${price.toInt()}",
        style: const TextStyle(
            fontWeight: FontWeight.w700, fontSize: 20, color: Colors.green),
      ),
    ],
  );
}

Row row2() {
  return const Row(
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
  );
}

Row row4() {
  return const Row(
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
  );
}

Row row3() {
  return const Row(
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
  );
}