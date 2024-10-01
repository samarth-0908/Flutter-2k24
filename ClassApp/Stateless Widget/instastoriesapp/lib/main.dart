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
          title: Text('Insta Stories'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              ),
              Container(
                width: 80,
                height: 80,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              ),
              Container(
                width: 80,
                height: 80,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              ),
              Container(
                width: 80,
                height: 80,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
              ),
              Container(
                width: 80,
                height: 80,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.purple),
              ),
              Container(
                width: 80,
                height: 80,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
