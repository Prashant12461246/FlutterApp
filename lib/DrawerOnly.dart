import 'package:flutter/material.dart';
import 'Practical1.dart';
import 'Practical2.dart';
import 'Practical3.dart';
import 'Practical4.dart';
import 'Practical5.dart';
import 'Practical6.dart';
import 'Practical7.dart';
import 'Practical8.dart';
import 'Practical9.dart';
import 'Practical10.dart';
import 'Practical11.dart';
import 'Practical12.dart';
import 'Practical14.dart';

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
          ListTile(
            title: Text("Pracrical 5"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (contex) => new Practical5()));
            },
          ),
          ListTile(
            title: Text("practical 6"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Practical6()));
            },
          ),
          ListTile(
            title: Text("practical 7"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Practical7()));
            },
          ),
          ListTile(
            title: Text("practical 8"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Practical8()));
            },
          ),
          ListTile(
            title: Text("practical 9"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Practical9()));
            },
          ),
          ListTile(
            title: Text("practical 10"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Practical10()));
            },
          ),
          ListTile(
            title: Text("practical 11"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Practical11()));
            },
          ),
          ListTile(
            title: Text("practical 12"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Practical12()));
            },
          ),
          ListTile(
            title: Text("practical 14"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Practical14()));
            },
          ),
        ],
      ),
    );
  }
}