import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/services/navigation_service.dart';
import 'package:hello_world/ui/atoms/button.dart';
import 'package:hello_world/locator.dart';

class Views404 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("404",style: TextStyle(fontSize : 40 , fontWeight: FontWeight.bold ) ),
              SizedBox(height: 10),
              Text("la pagina no se encunetra ",style: TextStyle(fontSize : 20 , fontWeight: FontWeight.normal ) ),
              Button(
                onPressed:() =>  locator<NavigationService>().goBack(  '/staful' ),
                text: "volver"
                )
          ],
        )
      )
    );
    
  }
}