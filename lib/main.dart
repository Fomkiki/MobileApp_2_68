import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/display_page.dart';
import 'package:flutter_application_1/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => const WelcomePage() ,
          '/about':(context) => const AboutPage(),
          '/display':(context) => const DisplayPage(name: '')
        },
        initialRoute: '/',
        //home:AboutPage()
        //home: WelcomePage(),
    );
  }
}