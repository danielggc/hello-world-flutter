import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/ui/pages/Page404.dart';
import 'package:hello_world/ui/pages/counter_page.dart';
import 'package:hello_world/ui/pages/counter_provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb ;
import 'package:hello_world/ui/views/counter_provider_Views.dart';

class  RouterGenerator {
  static Route<dynamic> generateRoute( RouteSettings settings ){

    switch ( settings.name  ){
      
      case '/staful'  : return _fadeRoute(  CounterWiew() , settings.name );
      case '/provider': return _fadeRoute(  CounterProviderViews() , settings.name );
      
      default: 
        return _fadeRoute( Page404(), "404");

    }

  }


   static  PageRoute   _fadeRoute( Widget child , String? routeName ){
     print(" en el page Route cambiando a ---- > $routeName  ");
     return PageRouteBuilder(
       settings:  RouteSettings( name:  routeName ),
       pageBuilder: (a,b,c)  => child,
       transitionsBuilder: ( c, animation,a ,b ) => 
       (kIsWeb ) ? 
       FadeTransition(
         opacity:  animation,
         child:  child ,
       )
       :CupertinoPageTransition(
         primaryRouteAnimation: animation,
         secondaryRouteAnimation: a,
         child: child, 
         linearTransition: true
        )
     );
   }



}