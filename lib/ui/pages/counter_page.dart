import 'package:flutter/material.dart';
import 'package:hello_world/ui/atoms/button.dart';

class CounterWiew extends StatefulWidget{
  _CounterWiew createState() => _CounterWiew();
}

class _CounterWiew extends State<CounterWiew>{

  int conuter = 0;
  @override
  Widget build(BuildContext context) {
    print("hola como estas  repintando ");
    // TODO: implement build
    return Scaffold(
      
      body:  Column(
        children: [
          SizedBox(height: 20,),

        
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