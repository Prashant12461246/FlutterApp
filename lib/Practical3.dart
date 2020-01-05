import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

int a =0;

class Practical3 extends StatefulWidget {
  Practical3({Key key}) : super(key: key);

  @override
  _Practical3State createState() => _Practical3State();
}

class _Practical3State extends State<Practical3> {
  @override
  
  Widget build(BuildContext context) {
    var raisedButton = RaisedButton(
                child: Text("click to see toast"),
                onPressed: showToast,
                
              );
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Practical 3"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[ 
              raisedButton,
              RaisedButton(
                child: Text("click to stop toast"),
                onPressed: (){
                  a=1;
                },
              ),
            ],
          ),
        )
        ),
      );
  }
}

void showToast(){
     a=0;
    Timer.periodic(Duration(seconds: 5), (timer)  {
                    if(a==1)
                      {
                        timer.cancel();
                      }
       Fluttertoast.showToast(
                        msg: 'Hello How Are You?',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 3,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0
                      );
                      
});
  }




