import 'package:flutter/material.dart';
import 'package:hello_world/provider/counter_provider.dart';
import 'package:hello_world/ui/atoms/button.dart';
import 'package:hello_world/ui/atoms/pintar_contador.dart';
import 'package:provider/provider.dart';


class CounterProviderViews extends StatelessWidget{


  int conuter = 0;
  @override
  Widget build(BuildContext context) {
    print(" repintando  ------>  provider ");
    // TODO: implement build
    final counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      
      body:  Column(
        children: [        
          Text("provider",style:  TextStyle(fontSize:  20 ),),
          Spacer(),
          PintarContador(),
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