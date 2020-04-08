import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

FirebaseUser data; 

class Practical10 extends StatefulWidget {

  @override
  _Practical10State createState() => _Practical10State();
}

class _Practical10State extends State<Practical10> {
  String myText;
  StreamSubscription<DocumentSnapshot> subscription;
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  final DocumentReference documentReference= Firestore.instance.document("myData/dummy");

  final GoogleSignIn googleSignIn = new GoogleSignIn();

  

  void _add(){
    Map<String,String> data = <String,String>{
      "name" : "Prashant",
      "desc" : "student"
    };
    documentReference.setData(data).whenComplete((){
      print("Document added");
    }).catchError((e)=>print(e));

  }

  void _delete(){

    documentReference.delete().whenComplete((){
      print("deleted sucessfully");
      setState(() {
        myText = null;
      });
    }).catchError((e)=>print(e));

  }

  void _update(){
     Map<String,String> data = <String,String>{
      "name" : "Prashant updated",
      "desc" : "student updated"
    };
    if (myText!=null) {
      documentReference.updateData(data).whenComplete((){
      print("Document updated");
    }).catchError((e)=>print(e));
    }
    

  }

  void _fetch(){
    documentReference.get().then((datasnapshot){
      if(datasnapshot.exists){
        setState(() {
           myText = datasnapshot.data['desc'];
        });
       
      }
    });
  }

    @override
  void initState() { 
    super.initState();
    subscription = documentReference.snapshots().listen((datasnapshot){
      if(datasnapshot.exists){
        setState(() {
           myText = datasnapshot.data['desc'];
        });
       
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    subscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 10"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
            new RaisedButton(
              onPressed:_add,
              child: Text("add"),
              color: Colors.cyanAccent,
            ),
            new Padding(padding: const EdgeInsets.all(10.0)),
            new RaisedButton(
              onPressed:_update,
              child: Text("update"),
              color: Colors.lightBlue,
            ),
            new Padding(padding: const EdgeInsets.all(10.0)),
            new RaisedButton(
              onPressed:_delete,
              child: Text("delete"),
              color: Colors.orange,
            ),
            new Padding(padding: const EdgeInsets.all(10.0)),
            new RaisedButton(
              onPressed:_fetch,
              child: Text("fetch"),
              color: Colors.lime,
            ),
            new Padding(padding: const EdgeInsets.all(10.0)),
            myText == null?new Container():new Text(myText,style: TextStyle(
              fontSize: 20.0,
              color: Colors.green,
            ),)
],
        ),
      ),
    );
  }
}

class Openpage extends StatefulWidget {
  @override
  _OpenpageState createState() => _OpenpageState();
}

class _OpenpageState extends State<Openpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("User name: ${data.displayName}"),
      ),
    );
  }
}