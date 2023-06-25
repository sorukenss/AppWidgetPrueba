import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? textInputType;
  final bool obscureText;

  final String formPropety;
  final Map<String,dynamic> formValues;

  const CustomInputField({
    super.key, this.hintText,
     this.labelText,
     this.helperText,
     this.icon,
     this.suffixIcon, 
     this.textInputType,
     this.obscureText=false, 
     required this.formPropety,
     required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: textInputType,
      obscureText:obscureText ,
      onChanged: (value) => formValues[formPropety] = value,
      validator: (value){
        if(value == null) return 'Este campo es requerido';
        return value.length< 3 ? 'Minimo 3 letras':null;
      },
      autovalidateMode:AutovalidateMode.onUserInteraction ,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: '10 caracteres Max.', 
        //prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon:suffixIcon == null? null:Icon(suffixIcon),
        icon: icon == null? null:Icon(icon),
        /*focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green, 
            ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )
        ),*/
        ),
    );
  }
}