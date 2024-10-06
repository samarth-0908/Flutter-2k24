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
            "Adding Border",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.red, width: 5),
              // borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
