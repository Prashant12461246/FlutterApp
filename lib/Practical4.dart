import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Practical4 extends StatefulWidget {
  Practical4({Key key}) : super(key: key);

  @override
  _Practical4State createState() => _Practical4State();
}

class _Practical4State extends State<Practical4> {
  @override
  Widget build(BuildContext context) {
    String a;
    double b;
        return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text("Practical 4"),
         ),
         body: Center(
           child: Column(
             children: <Widget>[
               TextField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Enter temprature in celcius",
                 ),
                 keyboardType: TextInputType.number,
                 onChanged: (val){
                   a = val;
                 },
                
               ),
               RaisedButton(
                 child: Text("feranhit"),
                 onPressed: (){
                   
                   if(a.toString().isNotEmpty){
                    b = double.parse(a);
                    b = b*(9/5)+32;
                    Fluttertoast.showToast(
                      msg: b.toString(),
                    );
                   }
                 },
               ),
             ],
           ),
         ),
       ),
    );
  }
}