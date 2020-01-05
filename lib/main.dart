import 'package:flutter/material.dart';
import 'DrawerOnly.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "practical",
      home: Scaffold(
        appBar: AppBar(
          title: Text("17it123_practical"),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: DrawerOnly(),
        body: Center(
          child: Text("Open Drawer to see the Practicals",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.blueAccent,
         ),),
        ),
      ),
    );
  }
}