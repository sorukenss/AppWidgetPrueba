
import 'package:fl_component/router/app_routes.dart';
import 'package:fl_component/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOptions =AppRoutes.menuOptions;
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        //backgroundColor: Colors.indigo[200] ,
        //elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
          title:   Text(menuOptions[i].namne),
          onTap: (){
            // final route = MaterialPageRoute(builder: (context) => const Listview1Screen(),);
             //Navigator.push(context, route);
             Navigator.pushNamed(context, menuOptions[i].route);
             //Navigator.pushReplacement(context, 'listview2'); destruye las ventanas anteriores no regresas;
          },
        ),
       separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOptions.length,
        ),
    );
  }
}