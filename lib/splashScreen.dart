import 'dart:async';

import 'package:celestia/login.dart';
import 'package:celestia/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget{
  @override
  State <splashScreen> createState() => _splashScreenState();
}
class _splashScreenState extends State<splashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1, milliseconds: 50), () {
      Navigator.pushReplacement(
          context ,
          MaterialPageRoute(
              builder: (context)=>login()));
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.deepPurple.shade600,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 160),
              Image.asset("assets/images/celestial1.png"),
              SizedBox(height: 150,),
              Text("Celestial Universe", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 29, color: Colors.white38,),)
            ],),),
        ),
      ),
    );
  }
}

