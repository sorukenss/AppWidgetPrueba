
import 'package:fl_component/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

    bool _sliderEnable = true;
    double _sliderValue=100;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children:  [
          Slider.adaptive(
            activeColor: AppTheme.primary,
            min:50,
            max:400,
            value: _sliderValue,
           onChanged: _sliderEnable? (value) {
              _sliderValue=value;
              setState(() {
                
              });

           }
           :null
           ),
           /*  Checkbox(
              value: _sliderEnable,
             onChanged: (value) {
                _sliderEnable = value?? true;
                setState(() {
                  
                });
             }
             ), */

            /*  CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {_sliderEnable=value?? true;})
              ), */

             /*  Switch(
                value: _sliderEnable,
                 onChanged:(value) => setState(() {_sliderEnable=value;})
                 ), */

          SwitchListTile.adaptive(
           activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {_sliderEnable=value;})
           ),


           Expanded(
             child: SingleChildScrollView(
               child: Image(
                image:  NetworkImage('https://i.pinimg.com/originals/56/e1/36/56e1365ba542d684ae1a0e9d3839f446.jpg'),
                fit:BoxFit.contain,
                width:_sliderValue,
                ),
             ),
           ),
        ],
      ),
    );
  }
}