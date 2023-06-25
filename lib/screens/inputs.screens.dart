import 'package:fl_component/widget/widgets.dart';
import 'package:flutter/material.dart';


class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String,String> formValues ={
      'first_name' : 'i',
      'last_name'  : 'p',
      'email'      : '@',
      'password'   : 'holi',
      'role'       : 'Admin',

    };


    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms')
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20,vertical:10),
          child: Form(
            key:myFormKey,
            child: Column(
              children:[
                     CustomInputField(labelText: 'Nombre Del Usuario', hintText: 'Nombre', helperText: 'Solo Texto',icon: Icons.assignment_ind_outlined,suffixIcon: Icons.group_outlined, formPropety: 'first_name', formValues:formValues,),
                  const SizedBox(height: 30,),
                     CustomInputField(labelText: 'Apellido Del Usuario', hintText: 'Apellido', helperText: 'Solo Texto',icon: Icons.assignment_ind_outlined,suffixIcon: Icons.group_outlined, formPropety: 'last_name', formValues: formValues,),
                  const SizedBox(height: 30,),
                     CustomInputField(labelText: 'Correo Del Usuario', hintText: 'Email', helperText: 'Solo Texto',icon: Icons.email,suffixIcon: Icons.mark_email_read,textInputType: TextInputType.emailAddress, formPropety: 'email', formValues: formValues,),
                  const SizedBox(height: 30,),
                     CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña', helperText: 'Solo Texto',suffixIcon: Icons.password,icon: Icons.security, obscureText: true, formPropety: 'password', formValues:formValues,),
                  const SizedBox(height: 30,),
          

                  DropdownButtonFormField(
                    items: const[
                        DropdownMenuItem(value: 'Admin', child: Text('Admin'),),
                        DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser'),),
                        DropdownMenuItem(value: 'Developer', child: Text('Developer'),),
                        DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer'),),
                        DropdownMenuItem(value: 'User', child: Text('User'),),
                    ], 
                    onChanged: (value){
                        print(value);
                        formValues['role'] = value ?? 'admin';
                    }
                    ),



                ElevatedButton(
                  child: const SizedBox(  
                    width: double.infinity,
                  child : Center(child: Text('Guardar'),),
                  ),
                  onPressed:(){
                    FocusScope.of(context).requestFocus(FocusNode());

                    if(!myFormKey.currentState!.validate()){
                      print('Formulario invalido');
                      return;
                    }

                    print(formValues);
          
                  },
                   
                   )
              ],
            ),
          )
        ),
        ),
    );
  }
}

