import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/provider/counter_provider.dart';
import 'package:hello_world/ui/pages/atoms/button.dart';
import 'package:hello_world/ui/pages/menu_Custom.dart';
import 'package:provider/provider.dart';


class CounterProviderPage extends StatelessWidget{


  int conuter = 0;
  @override
  Widget build(BuildContext context) {
    print("hola como estas  repintando ");
    // TODO: implement build
    final counterProvider = Provider.of<CounterProvider>(context);
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
               child: Text("Contador : ${counterProvider.counter}"),
             )
            

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(onPressed: ()=> counterProvider.increment(),text: "suma",),
              Button(onPressed: ()=> counterProvider.decrement(),text: "resta",)
          ],),
          Spacer(),
        ]
      ),
    );
  }

}