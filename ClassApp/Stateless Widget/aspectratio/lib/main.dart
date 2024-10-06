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
        appBar:AppBar(
          title: Text('Aspect Ratio Demo',style: TextStyle(
            fontSize: 30,

          ),),

          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.orange,

            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgOD0abk6GHTIRcOLItB1UnxDP8NtyACkMCA&s"),
          ),
        ),
      ),
    );
  }
}
