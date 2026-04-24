import 'dart:async';

import 'package:flutter/material.dart';

import 'package:myprofile_app/main.dart';

class Splashpage extends StatefulWidget{

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {

@override
  void initState() {
    
    super.initState();

    Timer(Duration(seconds: 5), () {
      
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
    },);
  }

  @override
  Widget build(BuildContext context) {
   
  return Scaffold(
    body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueGrey[200],
      child: Center(
        child: Text("CALCULATOR",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w900,
          
        ),),
      ),
    ),
   );
  }
}