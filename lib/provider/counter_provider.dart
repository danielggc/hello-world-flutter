import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
   int _counter  = 0 ;
   int _counter2 =  0;

  int get  counter => this._counter;

   void increment(){
     this._counter++;
     notifyListeners();
   }
   void decrement(){
     this._counter--;
     notifyListeners();
   }

   void updateValue2( int value ){
     this._counter2 =  value;
     notifyListeners();
   }


  int get counter2 => this._counter2;

   void increment2(){
     this._counter2++;
     notifyListeners();
   }
   void decrement2(){
     this._counter2--;
     notifyListeners();
   }


}

