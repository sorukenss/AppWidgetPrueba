import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child:  CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.indigo[900],
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://w7.pngwing.com/pngs/947/203/png-transparent-cartoon-spiderman.png'),
        )
        ),
     
    );
  }
}