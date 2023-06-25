
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const['Fotos','Videos','Audio','Screen','Documentos'];
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview 1'),
         //backgroundColor: Colors.indigo[200] ,
      ),
      body: ListView (
        children: [

          ...options.map((option) => ListTile(title: Text(option),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ),
           


          //ListTile(
           // title: Text('Home'),
          //)
        ]
      )
        
      
    );
  }
}