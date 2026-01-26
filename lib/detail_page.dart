import 'package:flutter/material.dart';
import 'package:flutter_application_1/catalog_product.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/mylist_page.dart';

class DetailPage extends StatelessWidget {

  final Product product ;

   DetailPage({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Detail Product'),
            backgroundColor: const Color.fromARGB(255, 0, 132, 255),
            
            leading: IconButton(
              onPressed: () {
                debugPrint('leading icon pressed');
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  MylistPage()));
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body:  Center(
            child: Column(
              children: [
                const SizedBox(height: 14,),
                Text(product.title,style: const TextStyle(fontSize: 25),),
                const SizedBox(height: 14,),
                Image.network(product.imgURL,width: 200,height: 200,),
                const SizedBox(height: 14,),
                Text(product.desc,style: const TextStyle(fontSize: 25))

              ],
            ),
          )
          );
  }
  }
