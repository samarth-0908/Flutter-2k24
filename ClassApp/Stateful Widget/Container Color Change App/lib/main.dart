import "package:flutter/material.dart";

void main() {
  runApp(const ContainerColorApp());
}

class ContainerColorApp extends StatefulWidget {
  const ContainerColorApp({super.key});

  @override
  State createState() => _ContainerColorAppState();
}

class _ContainerColorAppState extends State {
  bool changeColor = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Color'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Container(
          width: 300,
          height: 300,
          color: (changeColor) ? Colors.amber : Colors.blue,
        )),
        floatingActionButton: FloatingActionButton(onPressed: () {
          if (changeColor == true) {
            changeColor = false;
          } else {
            changeColor = true;
          }
          setState(() {});

          
        },
        child:
          const Icon(Icons.add),
        ),
      ),
    );
  }
}
