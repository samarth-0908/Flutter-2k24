import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'showing image',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
                  height: 150,
                  width: 150,
                  child: Image.network(
                      "https://allroundclub.com/blog/wp-content/uploads/2021/10/how-to-draw-pikachu-150x150.png"),
                ),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
                  height: 150,
                  width: 150,
                  child: Image.network(
                      "https://allroundclub.com/blog/wp-content/uploads/2021/10/how-to-draw-pikachu-150x150.png"),
                ),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
                  height: 150,
                  width: 150,
                  child: Image.network(
                      "https://allroundclub.com/blog/wp-content/uploads/2021/10/how-to-draw-pikachu-150x150.png"),
                ),
              ],
            ),
          )),
    );
  }
}
