import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  
  Button({
    required this.onPressed,
    required this.text,
    this.color = Colors.blue,
    });
  @override

  final Color color;
  final String text ;
  final Function onPressed;
  
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(
      style: TextButton.styleFrom(
        primary:Colors.black,
        backgroundColor: this.color
      ),
      onPressed: () => onPressed(),
      child: Padding(
        padding: EdgeInsets.all(10),
        child:  Text(text)

      ),
    );
  }

}