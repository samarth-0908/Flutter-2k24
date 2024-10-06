import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Adding Icons",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.blue,
          actions: [
            Icon(Icons.settings),
            Icon(Icons.notifications),
          ],
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
