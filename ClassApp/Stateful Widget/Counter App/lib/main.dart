import 'package:flutter/material.dart';

void main() {
  runApp(const CountingApp());
}

class CountingApp extends StatefulWidget {
  const CountingApp({super.key});

  @override
  State<CountingApp> createState() => _CountingAppState();
}

class _CountingAppState extends State<CountingApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counting App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("$count"),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;

            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
