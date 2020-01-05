import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Practical3 extends StatefulWidget {
  Practical3({Key key}) : super(key: key);

  @override
  _Practical3State createState() => _Practical3State();
}

class _Practical3State extends State<Practical3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Practical 3"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[ 
              RaisedButton(
                child: Text("click to see toast"),
                onPressed: showToast,
              ),
              RaisedButton(
                child: Text("click to stop toast"),
                onPressed: (){
                  Timer.(Duratin(seconds :0), timer){
                    timer.cancel();
                  };
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
  Timer.periodic(Duration(seconds: 3), (timer){
    Fluttertoast.showToast(
      msg: 'hello this is toast message',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 3,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0
    );
  });
}


