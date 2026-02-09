import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/bottom_navbar_page.dart';
import 'package:flutter_application_1/detail_page_1.dart';
import 'package:flutter_application_1/my_homepage_sharedpref.dart';
import 'package:flutter_application_1/mylist_page.dart';



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
          '/' : (context) => BottomNavBarPage() ,
          //'/' : (context) => MyHomePage(title: 'hello',) ,
          //'/about':(context) => const AboutPage(),
          //'/display':(context) => const DisplayPage(name: '')
        },
        initialRoute: '/',
        //home:AboutPage()
        //home: WelcomePage(),
    );
  }
}