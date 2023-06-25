import 'package:fl_component/widget/widgets.dart';
import 'package:flutter/material.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Wiget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children : const [ 
        CustomWidgetType1(),
        SizedBox(height: 10,),
        CustomWidgetType2(name:'Hermoso Lago',imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/screen-shot-2018-07-11-at-5-06-55-pm-1531343396.png',),
        SizedBox(height: 10,),
        CustomWidgetType2(name:'Hermosos Picos',imageUrl: 'https://img.freepik.com/vector-premium/paisaje-prados-montanas-colina_104785-943.jpg?w=2000',),
        SizedBox(height: 10,),
        CustomWidgetType2(name:'Un cielo Azulado',imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',),
        SizedBox(height: 10,),
        CustomWidgetType2(imageUrl: 'https://www.gardeningknowhow.com/wp-content/uploads/2020/12/lonely-japanese-cherry.jpg',),
        SizedBox(height: 100,),
        
        ],
      )
    );
  }
}

