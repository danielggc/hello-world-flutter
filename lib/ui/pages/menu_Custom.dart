import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/ui/pages/atoms/button.dart';

class MenuCustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("hola menu aplication ");
    
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 10 , vertical: 10),
      width: double.infinity,
      color: Colors.blue,
      height: 100,
      child: FittedBox(
      child:
        Row(children: [ 
          SizedBox( height: 10, ),
          Button( text:"contador stafu" , onPressed: ()  { Navigator.pushNamed(context, '/staful'); }, color: Colors.white,),
          SizedBox( width: 10 ),
          Button( text:" contador provider" , onPressed: () => Navigator.pushNamed(context, '/provider') , color: Colors.white,),
          SizedBox( width: 10 ),
          Button( text:" otra " , onPressed: () => Navigator.pushNamed( context, '/otra' ) , color: Colors.white,),
          
          ]),
      )

    );
  }
}