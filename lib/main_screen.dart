import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

//https://redowls.gumroad.com/l/FreeRestaurantPOS

class _MainScreenState extends State<MainScreen> {
  // List<Item> itemsList = [
  //   Item(
  //       name: "Fruit 1",
  //       price: 1.2,
  //       image: "https://exoticfruits.co.uk/cdn/shop/products/passionfruit-exoticfruitscouk-270048.jpg?v=1645488927"),
  //   Item(name: "babaya", price: 0.3, image: "https://www.freshco.com.sg/cdn/shop/products/Papaya.jpg?v=1586842607"),
  //   Item(
  //       name: "banana", price: 2.6, image: "https://static.libertyprim.com/files/familles/banane-large.jpg?1569271725"),
  //   Item(name: "Mango", price: 4.9, image: "https://www.svz.com/wp-content/uploads/2018/05/Mango.jpg"),
  //   Item(name: "apple", price: 3.1, image: "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"),
  //   Item(name: "dragon", price: 6.0, image: "https://www.color-meanings.com/wp-content/uploads/Pitaya.jpeg"),
  // ];

  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('dd MMMM yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            headerView(),
            filterView(),
          ],
        ),
      ),
    );
  }

  Widget filterView() {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Row(
        children: [
          const Text(
            "Pizza",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Expanded(child: Container()),
          const Row(
            children: [
              Text(
                "Max Price",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Icon(Icons.arrow_drop_down_rounded),
            ],
          ),
        ],
      ),
    );
  }

  Widget headerView() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, size: 30),
                  Text(
                    "Today, ${formatter.format(now)}",
                    style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  const Icon(Icons.search, size: 30),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    "https://pngimg.com/d/pizza_PNG44071.png",
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Total Amount"),
                      const SizedBox(height: 5),
                      const Text("\$ 42.83"),
                      const SizedBox(height: 5),
                      Container(
                        height: 40,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: const Center(
                          child: Text(
                            "Pay",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
