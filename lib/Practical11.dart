import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';

FirebaseUser data; 

class Practical11 extends StatefulWidget {
  @override
  _Practical11State createState() => _Practical11State();
}

class _Practical11State extends State<Practical11> {

   final GoogleSignIn googleSignIn = new GoogleSignIn();
   final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> _signIn() async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(idToken: gSA.idToken, accessToken: gSA.accessToken);

    final AuthResult authResult = await _auth.signInWithCredential(credential);
     FirebaseUser user = authResult.user;

    data = user;
    
    print("User name: ${user.displayName}");
    Navigator.push(context, MaterialPageRoute(builder: (context)=> new Openpage()));
    return user;
  }

  void _signOut(){
    googleSignIn.signOut();
    print("sign out");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 11"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new RaisedButton(
              onPressed: ()=> _signIn(),
              child: Text("Sign in"),
              color: Colors.green,
            ),
           
            new Padding(padding: const EdgeInsets.all(10.0)),
            new RaisedButton(
              onPressed:_signOut,
              child: Text("Sign out"),
              color: Colors.red,
            ),
            new Padding(padding: const EdgeInsets.all(10.0)),
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
