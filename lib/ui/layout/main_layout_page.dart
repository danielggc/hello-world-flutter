


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/ui/moleculas/menu_Custom.dart';

class MainLatoutPage extends StatelessWidget{
  
  Widget child ;

  MainLatoutPage({ required this.child });

  @override
  Widget build(BuildContext context) {
    print("pintando el  main latous page ");
    // TODO: implement build
    return Scaffold(
      body:Center(
        child:  Column(children: [
            MenuCustom(),
            Spacer(),
            Expanded(child:  child, ),
            Spacer()
          ]
        ),
      )
    );
  }
}