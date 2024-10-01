import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppbarColorApp(),
    );
  }
}

class AppbarColorApp extends StatefulWidget {
  const AppbarColorApp({super.key});

  @override
  State createState() => _AppbarColorApp();
}

class _AppbarColorApp extends State {
  bool colorChange = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Color'),
        centerTitle: true,
        backgroundColor: (colorChange) ? Colors.blue : Colors.pink,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (colorChange == true) {
            colorChange = false;
          } else {
            colorChange = true;
          }
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
