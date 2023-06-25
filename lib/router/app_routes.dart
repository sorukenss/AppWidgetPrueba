
import 'package:fl_component/models/models.dart';
import 'package:fl_component/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{

  static const initialRoute = 'home';
   static final menuOptions =<MenuOptions>[
     // borrar el home initialrouter
     //MenuOptions(route: 'home', namne: 'Home Screen', screen: const HomeScreen(),icon: Icons.home),
     MenuOptions(route: 'lisview1', namne: 'List view1', screen: const Listview1Screen(),icon: Icons.list_alt),
     MenuOptions(route: 'listview2', namne: 'List view2', screen: const Listview2Screen(),icon: Icons.list_sharp),
     MenuOptions(route: 'alert', namne: 'Alert', screen: const AlertScreen(),icon: Icons.add_alert_outlined),
     MenuOptions(route: 'card', namne: 'Card', screen: const CardScreen(),icon: Icons.credit_card),
     MenuOptions(route: 'avatar', namne: 'Avatar', screen: const AvatarScreen(),icon: Icons.supervised_user_circle),
     MenuOptions(route: 'Animated', namne: 'Animated Container', screen: const AnimatedScreen(),icon: Icons.play_circle_outline_rounded),
     MenuOptions(route: 'Inputs', namne: 'Inputs Screen', screen: const InputsScreen(),icon: Icons.input_rounded),
     MenuOptions(route: 'Slider', namne: 'Slider and Check', screen: const SliderScreen(),icon: Icons.slow_motion_video_outlined),
     MenuOptions(route: 'LisviewBuilder', namne: 'Infinit Scrool', screen: const ListViewBuilderScreen(),icon: Icons.build_circle_outlined),


   ];

   static  Map<String, Widget Function(BuildContext)> getAppRoutes() {

      Map<String, Widget Function(BuildContext)> appRoutes={};
      appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
      for (final options in menuOptions) {
        appRoutes.addAll({options.route: (BuildContext context) => options.screen});
        
      }
    
    return appRoutes;
   }

   /*static  Map<String, Widget Function(BuildContext)> routes = {
        'home': (BuildContext context) => const HomeScreen(),
        'listview1': (BuildContext context) => const Listview1Screen(),
        'listview2': (BuildContext context) => const Listview2Screen(),
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
      };*/

      static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(
            builder: (context) => const Listview2Screen(),
            );
      }
}