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
            'My App',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
