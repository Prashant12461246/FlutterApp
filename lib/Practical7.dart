import 'package:flutter/material.dart';

class Practical7 extends StatefulWidget {

  @override
  _Practical7State createState() => _Practical7State();
}

class _Practical7State extends State<Practical7> {
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
          title: Text("Practical 7"),
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