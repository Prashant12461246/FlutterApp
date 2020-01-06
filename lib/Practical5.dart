import 'dart:io';

import 'package:flutter/material.dart';

String user = '0';
String password = '0';
bool _isButtonDisabeled = false;
String loginmessage = '';
int attempt = 3;
Color bgcolor = Colors.white;

class Practical5 extends StatefulWidget {
  Practical5({Key key}) : super(key: key);

  @override
  _Practical5State createState() => _Practical5State();
}

class _Practical5State extends State<Practical5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 5"),
      ),
      body: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              border: OutlineInputBorder(),
              hintText: "Enter user name or email",
            ),
            onChanged: (val){
              user = val;
            },
          ),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              border: OutlineInputBorder(),
              hintText: "Enter Password",
              
            ),
            obscureText: true,
            onChanged: (val){
              password = val;
            },
          ),
          RaisedButton(
            child: Text("log in"),
            onPressed: _isButtonDisabeled ? null : succes,
          ),
          Text(loginmessage,
          style: TextStyle(
            backgroundColor: bgcolor,
          ),),
          Text("Attempt remaining : "+attempt.toString()),
          FloatingActionButton(
            tooltip: 'close App',
            child: Icon(Icons.close),
            onPressed: (){
              exit(0);
            },
          )
        ],
      ),
    );
  }
  void succes(){
    setState(() {
      if(user=='17it123'){
        if(password=='061199'){
          bgcolor = Colors.green;
          loginmessage = "login successful";
          attempt=3;
        }
        else{
          bgcolor = Colors.red;
          loginmessage = "Login unsuccessful";
          attempt--;
        }
        
      }
      else{
        bgcolor = Colors.red;
          loginmessage = "Login unsuccessful";
          attempt--;
      }
      if(attempt==0){
          _isButtonDisabeled = true;
      }
    });
  }
}
