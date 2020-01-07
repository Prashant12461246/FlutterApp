import 'package:flutter/material.dart';



class Practical7 extends StatefulWidget {
  Practical7({Key key}) : super(key: key);

  @override
  _Practical7State createState() => _Practical7State();
}

class _Practical7State extends State<Practical7> {

  var _abc = ['red','yellow','blue'];
  var _current = 'red';
  Color bgcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 7"),
      ),
      body: Center(
        child: DropdownButton<String>(
          items: _abc.map((String dropDownStringItem){
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(dropDownStringItem),
            );
          }).toList(),
          onChanged: (String val){
            setState(() {
              this._current = val;
              if (_current=='yellow') {
                bgcolor = Colors.yellow;
              }
              else if (_current=='red') {
                bgcolor = Colors.red;
              } else {
                bgcolor = Colors.blue;
              }
            });
          },
          value: _current,
        ),
      ),
      backgroundColor: bgcolor,
    );
  }
}