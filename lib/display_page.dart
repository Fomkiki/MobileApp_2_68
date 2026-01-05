import 'package:flutter/material.dart';
import 'package:flutter_application_1/welcome_page.dart';

class DisplayPage extends StatefulWidget {
  //const DisplayPage({super.key});
  final String name;
  final int? age ;
  const DisplayPage({super.key , required this.name,this.age});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Display Page'),
            backgroundColor: const Color.fromARGB(255, 0, 255, 42),
           
          ),
          body: Center(
            child: Column(
              children: [
                Text('Hi , ${widget.name} Age: ${widget.age}',style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 14,
                ),
                ElevatedButton(onPressed: () {
                  if(Navigator.canPop(context)){
                    Navigator.pop(context);
                  }
                }, child: Text('Back'))
              ],
            ),
          ));
  }
}