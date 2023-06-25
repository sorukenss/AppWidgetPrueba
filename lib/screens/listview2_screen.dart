
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const['Megaman','Dofus','Final Fantasy','Kyrbi','Mario'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Games'),
        //elevation: 0,
        //backgroundColor: Colors.indigo[200],
      ),
      body: ListView.separated(
        itemBuilder: (context,i) => ListTile(title :Text(options[i]),
         trailing:  Icon(Icons.arrow_forward_ios_outlined,color: Colors.indigo[300]),
         onTap: (){
          
         }
          
        ),
        separatorBuilder: (_, __) => const Divider(),
         itemCount: options.length,
         )
      
    );
  }
}