import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Intropage extends StatelessWidget{
  
  var nameFromHome ;
  
  Intropage(this.nameFromHome);

  
  @override

  Widget build(BuildContext context) {

   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
    ),
body: Container(
width: double.infinity,
height: double.infinity,

color: Colors.blueGrey[200],

child: Column(
mainAxisAlignment: MainAxisAlignment.center,

  children: [
    Text("Welcome! , $nameFromHome",style: TextStyle(fontSize: 35,
    
    fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
     
     SizedBox(height: 10,),
    

  ],
),
),
   );
    
  }
}


/*

<< =================== Passing Data From One Screen To another. =================== >>


import 'package:flutter/material.dart';
import 'package:myprofile_app/main.dart';


class Intropage extends StatelessWidget{
  
  var nameFromHome ;
  Intropage(this.nameFromHome);

  
  @override

  Widget build(BuildContext context) {

   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
    ),
body: Container(
width: double.infinity,
height: double.infinity,

color: Colors.blueGrey[200],

child: Column(
mainAxisAlignment: MainAxisAlignment.center,

  children: [
    Text("Welcome! , $nameFromHome",style: TextStyle(fontSize: 35,
    
    fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
     
     SizedBox(height: 10,),
    

  ],
),
),
   );
    
  }
}

<< ==================================================== >> */
