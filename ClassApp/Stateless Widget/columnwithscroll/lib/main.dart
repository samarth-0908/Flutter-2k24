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
          title: const Text('Column Demo'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              ),
              Image.network(
                  "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              ),
              Image.network(
                  "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              ),
              Image.network(
                  "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              ),
              Image.network(
                  "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              ),
              Image.network(
                  "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
