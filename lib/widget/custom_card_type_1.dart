
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomWidgetType1 extends StatelessWidget {
  const CustomWidgetType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
     child: Column(
       children:  [
        const ListTile(
           leading: Icon(Icons.photo_album, color: AppTheme.primary),
          title: Text('Soy un titulo'),
          subtitle: Text('probando la carta para ver como queda y asi tener idea de como hacer nuevas cartas para rellenar la app de cartas bonitas '),
         ),
         Padding(
           padding: const EdgeInsets.only( right: 5),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  TextButton(onPressed: () {}
                  , child: const Text('Cancelar')
                  ),
                  TextButton(onPressed: () {}
                  , child: const Text('OK')
                  ),
              ],
           ),
         )
       ],
     )
    );
  }
}