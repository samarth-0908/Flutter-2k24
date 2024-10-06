import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape:
              Border(bottom: BorderSide(width: 1, color: Colors.grey.shade500)),
          title: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
              SizedBox(width: 90),
              Text(
                "My cart",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 91, 113, 239),
                ),
              )
            ],
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 28,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 377,
                  height: 155,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 17,
                          ),
                          Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              "assets/Shoe.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19)),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                "Nike Shoes",
                                style: TextStyle(
                                    fontSize: 21, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "with iconic style and legendary\ncomfort, on repeat",
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "\$570.00",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        if (count > 0) {
                                          count--;
                                        }
                                        setState(() {});
                                      },
                                      icon: Icon(Icons.remove)),
                                  // const SizedBox(
                                  //   width: 1,
                                  // ),
                                  Container(
                                    height: 25,
                                    width: 27,
                                    child: Center(
                                      child: Text(
                                        "$count",
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 91, 113, 239),
                                            width: 1)),
                                  ),
                                  // const SizedBox(
                                  //   width: 1,
                                  // ),
                                  IconButton(
                                      onPressed: () {
                                        count++;

                                        setState(() {});
                                      },
                                      icon: Icon(Icons.add)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 377,
                  height: 155,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 17,
                          ),
                          Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              "assets/Shoe.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19)),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                "Nike Shoes",
                                style: TextStyle(
                                    fontSize: 21, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "with iconic style and legendary\ncomfort, on repeat",
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "\$77.00",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 22,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        if (count > 0) {
                                          count--;
                                        }
                                        setState(() {});
                                      },
                                      icon: Icon(Icons.remove)),
                                  // const SizedBox(
                                  //   width: 1,
                                  // ),
                                  Container(
                                    height: 25,
                                    width: 27,
                                    child: Center(
                                      child: Text(
                                        "$count",
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 91, 113, 239),
                                            width: 1)),
                                  ),
                                  // const SizedBox(
                                  //   width: 1,
                                  // ),
                                  IconButton(
                                      onPressed: () {
                                        count++;

                                        setState(() {});
                                      },
                                      icon: Icon(Icons.add)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 190,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text("Subtotal:",
                        style: TextStyle(
                          fontSize: 17,
                        )),
                    SizedBox(
                      width: 210,
                    ),
                    Text(
                      "\$800.00",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 21,
                    ),
                    Text("Delivery Fee:",
                        style: TextStyle(
                          fontSize: 17,
                        )),
                    SizedBox(
                      width: 200,
                    ),
                    Text(
                      "\$5.00",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Text("Discount:",
                        style: TextStyle(
                          fontSize: 17,
                        )),
                    SizedBox(
                      width: 235,
                    ),
                    Text(
                      "40\%",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 55,
                  width: 350,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 91, 113, 239)),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Checkout for Rs 480.00",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
