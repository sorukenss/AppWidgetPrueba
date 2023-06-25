import 'package:fl_component/theme/app_theme.dart';
import  'package:flutter/material.dart';

class CustomWidgetType2 extends StatelessWidget {
  const CustomWidgetType2({super.key, required this.imageUrl, this.name});
  final String? name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
        elevation: 20,
        shadowColor: AppTheme.primary.withOpacity(0.5),
        child: Column(
          children:  [
               FadeInImage(
                image:NetworkImage(imageUrl), 
                placeholder: const AssetImage('assets/jar-loading.gif'),
                width: double.infinity,
                height: 230,
                fit:BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 300),
              ),
              if(name != null)
               Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20,top: 10, bottom: 10),
                child:  Text(name ?? 'No Title')
                ),
          ],
        ),

    );
  }
}