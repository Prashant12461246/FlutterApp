import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Practical2 extends StatefulWidget {
  Practical2({Key key}) : super(key: key);

  @override
  _Practical2State createState() => _Practical2State();
}

class _Practical2State extends State<Practical2> {
  String a;
  String b;
  int sum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 2"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter First number",
                
              ),
              keyboardType: TextInputType.number,
              onChanged: (val){
                a = val;
              },
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter second number",
              ),
              keyboardType: TextInputType.number,
              onChanged: (val){
                b = val;
              },
            ),
            RaisedButton(
              child: Text("sum",
              style: TextStyle(
                fontSize: 16.0,
              ),),
              onPressed: (){
                if(a.toString().isEmpty||b.toString().isEmpty){
                  Fluttertoast.showToast(
                    msg: "please enter number",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0,
                    
                  );
                }
                else{
                  sum = int.parse(a)+int.parse(b);
                  Fluttertoast.showToast(
                    msg: sum.toString(),
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0,
                );
                } 
              },
            )
          ],
        ),
      ),
      
    );
  }
}