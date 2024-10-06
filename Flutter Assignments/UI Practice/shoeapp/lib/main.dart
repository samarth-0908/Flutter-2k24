import 'package:flutter/material.dart';

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
          title: Text(
            "Shoes",
            style: TextStyle(fontSize: 20, color: Colors.blue.shade700),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
                height: 425,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    "Nike Air Force 1 \"07",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  SizedBox(
                    height: 43,
                    width: 95,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.blue.shade700)),
                        child: const Text(
                          "SHOES",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 43,
                    width: 125,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.blue.shade700)),
                        child: const Text(
                          "FOOTWEAR",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipisicing\nelit. Qui dicta minus molestiae vel beatae natus\neveniet ratione temporibus aperiam harum alias\nofficiis hello"),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    "Quantity",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        if (count > 0) {
                          count--;
                        }
                        setState(() {});
                      },
                      icon: Icon(Icons.remove)),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    child: Center(
                      child: Text(
                        "$count",
                      ),
                    ),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
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
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.blue.shade700),
                        ),
                        onPressed: () {},
                        child: Text(
                          "PURCHASE",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
