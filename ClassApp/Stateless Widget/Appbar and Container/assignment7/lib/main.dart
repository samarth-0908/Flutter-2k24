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
            'Horizontal Scroll',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  height: 300,
                  child: Image.network(
                      "https://m.media-amazon.com/images/S/aplus-media-library-service-media/8eacf551-1d50-4794-9767-501e07fc2f68.__CR0,0,150,300_PT0_SX150_V1___.jpg"),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  height: 300,
                  child: Image.network(
                      "https://m.media-amazon.com/images/S/aplus-media-library-service-media/8eacf551-1d50-4794-9767-501e07fc2f68.__CR0,0,150,300_PT0_SX150_V1___.jpg"),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  height: 300,
                  child: Image.network(
                      "https://m.media-amazon.com/images/S/aplus-media-library-service-media/8eacf551-1d50-4794-9767-501e07fc2f68.__CR0,0,150,300_PT0_SX150_V1___.jpg"),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  height: 300,
                  child: Image.network(
                      "https://m.media-amazon.com/images/S/aplus-media-library-service-media/8eacf551-1d50-4794-9767-501e07fc2f68.__CR0,0,150,300_PT0_SX150_V1___.jpg"),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  height: 300,
                  child: Image.network(
                      "https://m.media-amazon.com/images/S/aplus-media-library-service-media/8eacf551-1d50-4794-9767-501e07fc2f68.__CR0,0,150,300_PT0_SX150_V1___.jpg"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
