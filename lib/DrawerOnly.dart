import 'package:flutter/material.dart';
import 'Practical1.dart';
import 'Practical2.dart';
import 'Practical3.dart';
import 'Practical4.dart';

class DrawerOnly extends StatelessWidget {
  const DrawerOnly({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.greenAccent
            ),
            child: Center(
              child: Text("Practical"),
            ),
          ),
          ListTile(
            title: Text("Pracrical 1"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (contex) => new Practical1()));
            },
          ),
          ListTile(
            title: Text("Pracrical 2"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (contex) => new Practical2()));
            },
          ),
          ListTile(
            title: Text("Pracrical 3"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (contex) => new Practical3()));
            },
          ),
          ListTile(
            title: Text("Pracrical 4"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (contex) => new Practical4()));
            },
          ),
          
        ],
      ),
    );
  }
}