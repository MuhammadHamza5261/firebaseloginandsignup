import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseloginandsignup/ui/firebase_login.dart';
import 'package:firebaseloginandsignup/ui/firebase_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //add firebase in flutter project
 await Firebase.initializeApp();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const FireBaseLoginSTL()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
              child: Text(
                'FireBase Login',
                style: TextStyle(
                  color: Colors.purpleAccent,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
