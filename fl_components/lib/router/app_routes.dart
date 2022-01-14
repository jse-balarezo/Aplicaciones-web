import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';


class AppRoutes {


  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // todo :borra home
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp),
    MenuOption(route: 'lsitview1', name: 'Listview tipo 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'lsitview2', name: 'Listview tipo 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Tarjetas ', screen: const CardScreen(), icon: Icons.credit_card),
  ];
  
    static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
    
    }


  
  //static Map<String, Widget Function(BuildContext)> routes ={
  //  'Listview1':( BuildContext context) => const Listview1Screen(),
  //      'Listview2':( BuildContext context) => const Listview2Screen(),
  //      'alert'    :( BuildContext context) => const AlertScreen(),
  //      'card'     :( BuildContext context) => const CardScreen(),
  //      'home'     :( BuildContext context) => const HomeScreen(),
  //};


  static Route<dynamic>? onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      }

}