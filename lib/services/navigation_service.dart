
import 'package:flutter/cupertino.dart';

class NavigationService {

  final GlobalKey<NavigatorState>  navigatorKey = GlobalKey<NavigatorState>();

  
  Future navitationTo(String route ) {
    return navigatorKey.currentState!.pushNamed( route );
  }


  void goBack ( String routeName ){
     navigatorKey.currentState!.pop();
  }

}
 

