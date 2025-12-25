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
          body: Center(
              child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.all(20),
              height: 180,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 184, 182, 182),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/acc.png',
                        width: 100,
                        height: 100,
                      ),
                      const Expanded(
                        child: Text(
                          'โครงการคนละครึ่งไลัส สนับสนุนโดยภาครัฐมาตรการกระตุ้นเศรษฐกิจ 50-50%',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.wallet_rounded)),
                      Text('ยอดคงเหลือสิทธิ์วันนี้'),
                      Spacer(),
                      Text('150บาท')
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 184, 182, 182),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    )
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('ยอดใช้สิทธิ์วันนี้'), Text('150บาท')],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    )
                  ]),
              child: Row(
                children: [
                  Image.asset('assets/images/product1.jpg',
                      width: 100, height: 100),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'เครื่องกรองน้ำ Uni Pure Blue 5 ขั้นตอน ระบบธรรมดา (UP05NR)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'เป็นเครื่องกรองน้ำรุ่นประหยัด กระบอกกรองผลิตในประเทศไทย ไส้กรอง และอุปกรณ์นำเข้า',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text('4.5'),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.star)),
                    ],
                  )
                ],
              ),
            )
          ])),
        ));
  }
}
