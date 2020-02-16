import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';


class Practical10 extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn() async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(idToken: gSA.idToken, accessToken: gSA.accessToken);

    final AuthResult authResult = await _auth.signInWithCredential(credential);
    FirebaseUser user = authResult.user;
    
    print("User name: ${user.displayName}");
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
        title: Text("Firebase Demo"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new RaisedButton(
              onPressed: ()=> _signIn().then((FirebaseUser user)=>print(user)).catchError((e)=>print(e)),
              child: Text("Sign in"),
              color: Colors.green,
            ),
           
            new Padding(padding: const EdgeInsets.all(10.0)),
            new RaisedButton(
              onPressed: ()=> _signOut(),
              child: Text("Sign out"),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}