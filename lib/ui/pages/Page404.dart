import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: 
        Column(children: [
          Text("404",style: TextStyle(fontSize : 40 , fontWeight: FontWeight.bold ) ),
          SizedBox(height: 10),
          Text("la pagina no se encunetra ",style: TextStyle(fontSize : 20 , fontWeight: FontWeight.normal ) ),
        ],
      )
    );
    
  }
}