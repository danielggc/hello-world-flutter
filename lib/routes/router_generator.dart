import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/ui/pages/Page404.dart';
import 'package:hello_world/ui/pages/counter_page.dart';
import 'package:hello_world/ui/pages/counter_provider.dart';

class  RouterGenerator {
  static Route<dynamic> generateRoute( RouteSettings settings ){

    switch ( settings.name  ){
      
      case '/staful'  : return _fadeRoute(  CounterPage() , settings.name )
      case '/provider': return _fadeRoute( CounterProviderPage() , settings.name );
      
      default: 
        return _fadeRoute( Page404(), "404");

    }

  }


   static  PageRoute   _fadeRoute( Widget child , String? routeName ){
     return PageRouteBuilder(
       settings:  RouteSettings( name:  routeName ),
       pageBuilder: (a,b,c)  => child,
       transitionsBuilder: ( c, animation,a ,b ) => 
       FadeTransition(
         opacity:  animation,
         child:  child ,
       )
     );
   }


}