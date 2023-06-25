import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
   void displayDialogIOS(BuildContext context){
       showCupertinoDialog(
         barrierDismissible: false,
        context: context,
        builder: (context){
          return CupertinoAlertDialog(
            title: const Text('Titulos : '),
            content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
                Text('Esta es la primera alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 40),
            ],
          
          ),
          actions: [

            TextButton(onPressed: ()=> Navigator.pop(context),
               child: const Text('Cancelar',style: TextStyle(color:Colors.red)),
            ),  
             TextButton(onPressed: ()=> Navigator.pop(context),
               child: const Text('OK'),
            ),
          ],

          );
        },
        );
   }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context){
        return AlertDialog(
          elevation:5,
          title: const Text('Titulos : '),
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
                Text('Esta es la primera alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 40),
            ],
          
          ),
          actions: [

            TextButton(onPressed: ()=> Navigator.pop(context),
               child: const Text('Cancelar'),
            ),
             TextButton(onPressed: ()=> Navigator.pop(context),
               child: const Text('OK'),
            ),
          ],

        );
      }
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
         child: ElevatedButton(
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20 , vertical: 15),
            child:  Text('Mostrar Alerta',style: TextStyle(fontSize: 16),),
          ),
          //onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid 
          ?displayDialogAndroid(context)
          :displayDialogIOS(context),
          

          )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}