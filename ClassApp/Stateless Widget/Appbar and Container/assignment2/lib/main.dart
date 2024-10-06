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
          title: const Text('My App'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
