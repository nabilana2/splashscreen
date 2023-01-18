import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'home.dart';

class Splashscreen extends StatefulWidget { 
  _Splashscreen createState() => _Splashscreen();

}

class _Splashscreen extends State<Splashscreen>{

  void iniState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart()async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Home()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Icon(
              Icons.school,
              size: 100.0,
              color: Colors.white,
            ),            
            Text("SEKOLAHKU",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}