import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/ui/pages/Page404.dart';
import 'package:hello_world/ui/pages/counter_page.dart';
import 'package:hello_world/ui/pages/counter_provider.dart';

class  RouterGenerator {
  static Route<dynamic> generateRoute( RouteSettings settings ){

    switch ( settings.name  ){
      
      case '/staful'  : return MaterialPageRoute(
        settings:  RouteSettings( name: settings.name ),
        builder: (_) =>   CounterPage( ) 
      );
      case '/provider': return MaterialPageRoute(
        settings: RouteSettings( name : settings.name ),
        builder: (_) => CounterProviderPage()
      );
      
      default: 
        return MaterialPageRoute(
          settings: RouteSettings( name: "/404" ),
          builder: (_) => Page404()
        );

    }

  }




}