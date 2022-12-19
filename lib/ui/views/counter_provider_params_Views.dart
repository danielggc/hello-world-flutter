import 'package:flutter/material.dart';
import 'package:hello_world/provider/counter_provider.dart';
import 'package:hello_world/ui/atoms/button.dart';
import 'package:hello_world/ui/atoms/pintar_contador.dart';
import 'package:provider/provider.dart';


class CounterProviderParamsViews extends StatelessWidget{


  int conuter  = 0;
  CounterProviderParamsViews( String counterInput){
    if( int.parse( counterInput ) != null ) {
      this.conuter = int.parse( counterInput );
    }
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final counterProvider = Provider.of<CounterProvider>(context);
    counterProvider.updateValue2( conuter );
    print(" repintando  ------>  provider params  ");

    return Scaffold(
      
      body:  Column(
        children: [        
          Text(" provider params ",style:  TextStyle(fontSize:  20 ),),
          Spacer(),

          FittedBox(
            fit :BoxFit.contain, 
             child : Padding(
               padding: const EdgeInsets.all(5.0),
               child: Text("Contador : ${ counterProvider.counter2 }"),
             )
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(onPressed: ()=> counterProvider.increment2(),text: "suma",),
              Button(onPressed: ()=> counterProvider.decrement2(),text: "resta",)
          ],),
          Spacer(),
        ]
      ),
    );
  }

}