import 'package:flutter/material.dart';
import 'package:torch/torch.dart';

class Practical6 extends StatelessWidget {
  const Practical6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("practical 6"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text("ON"),
              onPressed: Torch.turnOn,
            ),
            RaisedButton(
              child: Text("OFF"),
              onPressed: Torch.turnOff,
            )
          ],
        ),
      ),
    );
  }
}