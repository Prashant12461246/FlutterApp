import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Practical9 extends StatefulWidget {
  Practical9({Key key}) : super(key: key);

  @override
  _Practical9State createState() => _Practical9State();
}

class _Practical9State extends State<Practical9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("practical 9"),
      ),
      body: Builder(
        builder: (BuildContext context){
          return WebView(
            initialUrl: 'www.google.com',
            javascriptMode: JavascriptMode.unrestricted,
          );
        },
      ),
    );
  }
}