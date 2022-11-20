import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/provider/counter_provider.dart';
import 'package:provider/provider.dart';


class PintarContador extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    // TODO: implement build
    return FittedBox(
            fit :BoxFit.contain, 
             child : Padding(
               padding: const EdgeInsets.all(5.0),
               child: Text("Contador : ${counterProvider.counter}"),
             )
          );

  }
}