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
              backgroundColor: Colors.green,
              actions: [
                IconButton(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  onPressed:() {debugPrint('pressed button 1');} ,
                ),
                IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed:() {debugPrint('pressed button 2');} ,
                ),
              ],
              leading: IconButton(onPressed:() {debugPrint('leading icon pressed');}, icon: const Icon(Icons.menu),),
            ),
            body: //Text('hello test',style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.green,backgroundColor: const Color.fromARGB(255, 209, 244, 54))),
                Center(
              child: Column(
                children: [
                  Text('Hello test',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(214, 153, 0, 145),
                          )),
                  SizedBox(height: 400,child: Image.asset('assets/images/imgLogo.jpg',width:500,),),
                  SizedBox(
                    height: 50,
                    child: Text(
                    'ชำระเงินเสร็จสิ้น',
                    style: TextStyle(fontSize: 30,),
                  ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Text(
                    'ขอบคุณที่ใช้บริการ',
                    style: TextStyle(fontSize: 30,),
                  ),
                  ),
                  Row(children: [
                    SizedBox(
                    width: 200,
                    child: Text(
                    'ชำระเงินจำนวน',
                    style: TextStyle(fontSize: 30,),
                  ),
                  ),
                  SizedBox(
                    width: 500,
                    child: Text(
                    '500 บาท',
                    style: TextStyle(fontSize: 30,),
                  ),
                  ),

                  ],),

                  Row(children: [
                    SizedBox(
                    width: 200,
                    child: Text(
                    'ยอดเงินคงเหลือ',
                    style: TextStyle(fontSize: 30,),
                  ),
                  ),
                  SizedBox(
                    width: 500,
                    child: Text(
                    '2000 บาท',
                    style: TextStyle(fontSize: 30,),
                  ),
                  ),

                  ],),
                  ElevatedButton(
                      onPressed: () {
                        debugPrint('pressed button 1');
                      },
                      child: Text(
                        'OK Button',
                        style: TextStyle(
                            fontSize: 20,
                            backgroundColor:
                                const Color.fromARGB(255, 255, 0, 0)),
                      )),
                ],
              ),
            )));
  }
}
