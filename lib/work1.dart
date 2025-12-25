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
              child: Column(
                children: [
                  Text('GAME-CENTER',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(214, 153, 0, 145),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                      'assets/images/imgLogo.jpg',
                      width: 500,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 830,
                      ),
                      SizedBox(
                        height: 50,
                        child: Text(
                          'ขอบคุณที่ใช้บริการ',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.thumb_up_alt_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    child: Image.asset(
                      'assets/images/check.jpg',
                      width: 500,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    child: Text(
                      'ชำระเงินเสร็จสิ้น',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 250,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'ชำระเงินจำนวน : ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: Text(
                          '500 บาท',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 250,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'ยอดเงินคงเหลือ : ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: Text(
                          '2000 บาท',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 250,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'วันที่ชำระ :',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: Text(
                          '15/12/2025',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 250,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'ค่าธรรมเนียม :',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: Text(
                          '8 บาท',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1200,
                      ),
                      SizedBox(
                        width: 230,
                        child: Text(
                          'บริษัท Game-center',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.computer_sharp),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1200,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          debugPrint('pressed button 1');
                        },
                        child: Text('Home',
                            style: TextStyle(
                              fontSize: 20,
                              height: 3,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          debugPrint('pressed button 2');
                        },
                        child: Text('Close',
                            style: TextStyle(
                              fontSize: 20,
                              height: 3,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
