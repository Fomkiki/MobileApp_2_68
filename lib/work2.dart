import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('MyApp'),
            backgroundColor: Colors.yellow,
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
              },
              icon: const Icon(Icons.menu),
            ),
          ),
          body:  Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(color:const Color.fromARGB(255, 179, 177, 162),borderRadius: BorderRadius.circular(20),),
                  child: Row(
                    children: [
                      Image.asset('assets/images/check.jpg',width: 50,height: 50,),
                      Expanded(child:Text('โครงการคนละครึ่งพลัส สนับบสนุนโดยทางภาครัฐมาตรการกระตุ้นเศรษฐกิจ50-50%',style:TextStyle( color :Colors.black,)))
                    ],
                  ),
                )
              ],
              
            ),
          ),
        ));
  }
}
