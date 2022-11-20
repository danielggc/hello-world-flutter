import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/ui/atoms/button.dart';
import 'package:hello_world/ui/moleculas/menu_Custom.dart';

class CounterPage extends StatefulWidget{
  _CounterPage createState() => _CounterPage();
}

class _CounterPage extends State<CounterPage>{

  int conuter = 0;
  @override
  Widget build(BuildContext context) {
    print("hola como estas  repintando contador normal  ");
    // TODO: implement build
    return Scaffold(
      
      body:  Column(
        children: [
          SizedBox(height: 20,),

          MenuCustom(),
        
          Spacer(),
      
          FittedBox(
            fit :BoxFit.contain, 
          
             child : Padding(
               padding: const EdgeInsets.all(5.0),
               child: Text("Contador : ${this.conuter}"),
             )
            

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(onPressed: ()=> setState((){conuter++;}),text: "suma", color:  Colors.green,),
              Button(onPressed: ()=> setState((){conuter--;}),text: "resta", color:  Colors.green,)
            ],
          ),
          Spacer(),
        ]
      ),
    );
  }

}