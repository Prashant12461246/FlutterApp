import 'package:flutter/material.dart';

class Practical8 extends StatefulWidget {

  @override
  _Practical8State createState() => _Practical8State();
}

class _Practical8State extends State<Practical8> {
  List<Widget> containers = [
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.blueAccent,
    ),
    Container(
      color: Colors.cyanAccent,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Practical 8"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'chats',
              ),
              Tab(
                text: 'status',
              ),
              Tab(
                text: 'calls',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}