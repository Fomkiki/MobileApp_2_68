import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text('MyApp'),
          backgroundColor: Colors.green,
        ),
        body:Text('hello test',style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.green,backgroundColor: const Color.fromARGB(255, 209, 244, 54))),

      )
    );
  }
}

