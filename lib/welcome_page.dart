import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/display_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomeState();
}

class _WelcomeState extends State<WelcomePage> {
  String _output = '' ;
  final _textController = TextEditingController(); // use for have input form

  @override
  void initState() {
    super.initState();
    _output = 'Enter your name';
  }


  @override
  void dispose(){
    _textController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Welcome Page'),
            backgroundColor: Colors.yellow,
            actions: [
              
              IconButton(
                icon: const Icon(Icons.info_outline),
                tooltip: 'About Us',
                onPressed: () {
                  debugPrint('pressed button 2');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutPage()));
                },
              ),
            ],
            leading: IconButton(
              onPressed: () {
                debugPrint('leading icon pressed');
              },
              icon: const Icon(Icons.menu),
            ),
          ),
          body: Center(
              child: Column(
                children: [
                  const Text('Hello , Welcome Page (Stateful)',style: TextStyle(fontSize: 18,color:Color.fromARGB(255, 255, 0, 0)),),
                  
                  const SizedBox(
                    height: 14,
                  ),
                  TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Entername'
                    ),
                  ),
                  Text('$_output',style: TextStyle(fontSize: 18),),
                  ElevatedButton(onPressed:() 
                  {debugPrint('pressed button');
                  setState(() {
                    String _input = _textController.text ;
                    _output ='Hello , $_input Welcome to My App';
                  });}, child: Text('Click me')),
                   ElevatedButton(onPressed:() 
                  {
                    debugPrint('pressed button');
                    String _input = _textController.text ;
                    int _inputAge = 18 ;
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DisplayPage(name: _input,age: _inputAge,)));
                  }, child: Text('Go to Display Page')),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/about') ;
                  }, child: const Text('About Us (Named route)')),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/display') ;
                  }, child: const Text('Display page (Named route)')),
                ],
              ),
          ));
  }
}