import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewMain extends StatefulWidget {
  const NewMain({super.key});

  @override
  State<NewMain> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<NewMain> {
// coding and argumnets

  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('dd MMMM yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          buildNav(),
          scrollhor(),
        ],
      ),
    );
  }

  Widget scrollhor() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 200,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            color: Colors.red,
          ),
          Container(
            width: 160,
            color: Colors.blue,
          ),
          Container(
            width: 160,
            color: Colors.green,
          ),
          Container(
            width: 160,
            color: Colors.yellow,
          ),
          Container(
            width: 160,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget buildNav() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to your basket",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height:
                              2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                          color: Colors.redAccent, //font color
                          //background color
                          letterSpacing: 5, //letter spacing
                          decoration: TextDecoration.underline, //make underline
                          decorationStyle:
                              TextDecorationStyle.double, //double underline
                          decorationColor:
                              Colors.brown, //text decoration 'underline' color
                          decorationThickness:
                              1.5, //decoration 'underline' thickness
                          fontStyle: FontStyle.normal),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.filter_list, size: 40),
                    Text(
                      "Today, ${formatter.format(now)}",
                    ),
                    const Icon(
                      Icons.search,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  height: 160,
                  child: Expanded(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40, bottom: 30),
                          child: Image.network(
                              "https://www.nicepng.com/png/full/54-547753_food-plate-png-top-view-food-plate-top.png",
                              height: 100),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 200,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Text(
                                  "Total Ammount",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const Text(
                                  "\$522.5",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Pay",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily:
                                            String.fromEnvironment("Tahoma")),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
