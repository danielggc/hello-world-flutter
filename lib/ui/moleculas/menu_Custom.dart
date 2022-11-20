import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/services/navigation_service.dart';
import 'package:hello_world/ui/atoms/button.dart';
import 'package:hello_world/locator.dart';

class MenuCustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ( constraints.maxWidth > 300 )  
        ?_MenuCustomTable()

        :_MenuCustomMovil(alto: 200,);
      },
    );
  }
}


class _MenuCustomTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("hola menu aplication ");
    
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 10 , vertical: 10),
      width: double.infinity,
      color: Colors.blue,
      height: 100,
      
      child:FittedBox(
        child:
          Row(children: [ 
            SizedBox( width: 10, ),
            Button( text:"contador stafu" , onPressed: ()  { locator<NavigationService>().navitationTo( '/staful' ); }, color: Colors.white,),
            SizedBox( width: 10 ),
            Button( text:" contador provider" , onPressed: () => locator<NavigationService>().navitationTo( '/provider' ) , color: Colors.white,),
            SizedBox( width: 10 ),
            Button( text:" otra " , onPressed: () => locator<NavigationService>().navitationTo('/otra' ) , color: Colors.white,),
            
            ]),
      )
      

    );
  }
}




class _MenuCustomMovil extends StatelessWidget{
  @override
  final double alto ;
  _MenuCustomMovil({ this.alto = 10 });
  Widget build(BuildContext context) {

    // TODO: implement build
    print("hola menu aplication movil  ");
    
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 10 , vertical: 10),
      width: double.infinity,
      color: Colors.blue,
      height: alto,
      child:
        Column(children: [ 
          SizedBox( height: 5, ),
          Button( text:"contador stafu" , onPressed: ()  { locator<NavigationService>().navitationTo( '/staful' ); }, color: Colors.white,),
          SizedBox( height: 5 ),
          Button( text:" contador provider" , onPressed: () => locator<NavigationService>().navitationTo( '/provider' ) , color: Colors.white,),
          SizedBox( height: 5 ),
          Button( text:" otra " , onPressed: () => locator<NavigationService>().navitationTo('/otra' ) , color: Colors.white,),
          
          ]),
    

    );
  }
}