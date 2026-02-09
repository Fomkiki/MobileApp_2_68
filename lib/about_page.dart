/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/mylist_page.dart';
import 'package:flutter_application_1/welcome_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('About Page'),
            backgroundColor: const Color.fromARGB(255, 0, 132, 255),
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {
                  debugPrint('pressed button 1');
                },
              ),
              IconButton(
                icon: const Icon(Icons.info_outline),
                onPressed: () {
                  debugPrint('pressed button 2');
                },
              ),
            ],
            leading: IconButton(
              onPressed: () {
                debugPrint('leading icon pressed');
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  MylistPage()));
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: const Text('welcome to my app'),);
  }
}
*/