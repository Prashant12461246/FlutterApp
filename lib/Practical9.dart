import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Practical9 extends StatefulWidget {
  Practical9({Key key}) : super(key: key);

  @override
  _Practical9State createState() => _Practical9State();
}

class _Practical9State extends State<Practical9> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("Browser"),
      ),
      url: "https://www.google.com/"
      
    );
  }
}