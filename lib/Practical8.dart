import 'package:flutter/material.dart';
import 'package:carousel_widget/carousel_widget.dart';

class Practical8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('FRAGMENT'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300.0,
            child: Carousel(
              listViews: [
                Fragment(
                  child: ListView(
                    children: <Widget>[
                      Image.asset('assets/1.jpg'),
                    ],
                  ),
                ),
                Fragment(
                  child: ListView(
                    children: <Widget>[
                      Image.asset('assets/2.jpg'),
                    ],
                  ),
                ),
                Fragment(
                  child: ListView(
                    children: <Widget>[
                      Image.asset('assets/3.jpg'),
                    ],
                  ),
                ),
                Fragment(
                  child: ListView(
                    children: <Widget>[
                      Image.asset('assets/4.jpg'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              height: 300.0,
              child: Fragment(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: ((context, index) => ListTile(
                          title: Text('index $index'),
                        ))),
              ))
        ],
      ),
    );
  }
}