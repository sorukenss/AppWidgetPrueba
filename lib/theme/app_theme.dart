import 'package:flutter/material.dart';

class AppTheme{

 static const Color primary = Colors.indigo;

 static final ThemeData darkTheme = ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            color: primary,
            elevation: 0,
          ),
          //scaffoldBackgroundColor: Colors.black,

          textButtonTheme: TextButtonThemeData(
            // ignore: deprecated_member_use
            style: TextButton.styleFrom(primary:primary),
          ),

          // FloatactingonButton
           floatingActionButtonTheme: const FloatingActionButtonThemeData(
             backgroundColor: primary,

           ),

           //ElevatedButton

           elevatedButtonTheme:  ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: Colors.indigo,
                shape: const StadiumBorder(),
                elevation: 0,
              ),
           ),

            //decoration theme de buttons
            inputDecorationTheme: const InputDecorationTheme(
              floatingLabelStyle: TextStyle(color: primary),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primary,
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),

              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primary,
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
                
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
              )
            )

          );



}