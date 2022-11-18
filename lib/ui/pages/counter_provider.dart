import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/ui/pages/atoms/button.dart';
import 'package:hello_world/ui/pages/menu_Custom.dart';

class CounterProviderPage extends StatefulWidget{
  _CounterProviderPage createState() => _CounterProviderPage();
}

class _CounterProviderPage extends State<CounterProviderPage>{

  int conuter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      body:  Column(
        children: [
          MenuCustom(),
        
          Text("provider",style:  TextStyle(fontSize:  20 ),),
          Spacer(),
        
          FittedBox(
            fit :BoxFit.contain, 
          
             child : Padding(
               padding: const EdgeInsets.all(5.0),
               child: Text("Contador : ${conuter}"),
             )
            

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(onPressed: ()=>{},text: "suma",),
              Button(onPressed: ()=>{},text: "resta",)
          ],),
          Spacer(),
        ]
      ),
    );
  }

}