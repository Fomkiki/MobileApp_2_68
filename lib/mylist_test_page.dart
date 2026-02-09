/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/catalog_product.dart';
import 'package:flutter_application_1/detail_page.dart';
import 'package:flutter_application_1/display_page.dart';

class MylistPage extends StatelessWidget {
   MylistPage({super.key});
  

  /*final List<String> products = <String>[
    'Water Filter 1101',
    'Brown Long Sleeve Jacket 1101',
    'Filter 3 Steps',
    'Smart Robot Car',
    'Remote controller DC-01'

  ];*/





  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Mylist Page'),
            backgroundColor: const Color.fromARGB(255, 0, 132, 255),
            /*leading: IconButton(
              onPressed: () {
                debugPrint('leading icon pressed');
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutPage()));
              },
              icon: const Icon(Icons.arrow_back),
            ),*/
          ),
          body: ListView.separated(
            itemCount: CatalogProducts.items.length,
            itemBuilder: (context,index) => ListTile(
              leading: Image.network(CatalogProducts.items[index].imgURL ),
              title: Text(CatalogProducts.items[index].title),
               subtitle: Text(CatalogProducts.items[index].desc),
                onTap: () => Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) =>  DetailPage(product:CatalogProducts.items[index]))),
            ),
            
            separatorBuilder: (context, int index) => const Divider(),
           
           
            
            )


          );
  }

}



/*ListView(
            children:  [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('My Profile') ,
                subtitle: Text('View/Edit your profile'),
                trailing: Icon(Icons.arrow_forward_ios),
                tileColor: Color.fromARGB(255, 243, 255, 244),
                onTap: () => Navigator.push(context , MaterialPageRoute(builder: (context) => const AboutPage())),
              )
             ,
             ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('Billing Account'),
                subtitle: Text('View/Edit your profile'),
                tileColor: Colors.lightBlue,
                onTap: () => Navigator.push(context , MaterialPageRoute(builder: (context) => const AboutPage())),
              )
             ,
             ListTile(
                leading: Icon(Icons.settings),
                title:  Text('Settings'),
                subtitle: Text('Setting and Configuring'),
                tileColor: Color.fromARGB(255, 243, 255, 244),
              )
             ,
              
             

            ],
          )*/


          */