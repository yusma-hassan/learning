import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myprofile_app/splashPage.dart';

void main() {
  runApp(const MyProfile_App());
}

class MyProfile_App extends StatelessWidget {
  const MyProfile_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Profile App",
      theme: ThemeData(
          textTheme: TextTheme(
              headlineLarge: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
              titleMedium: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ))),
      home: Splashpage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePgaeState();
  }
}

class HomePgaeState extends State<HomePage> {
 
 var arrData = [
  {
    "Name" : "Syeda",
   "MobNo" : "03000101013",
   "unRead": "1"
  },
  {
    "Name" : "Yusma",
   "MobNo" : "030034171013",
   "unRead": "4"
  },
  {
    "Name" : "Hassan",
   "MobNo" : "03670151013",
   "unRead": "2"
  },
  {
    "Name" : "Amna",
   "MobNo" : "031108991013",
   "unRead": "5"
  },
  {
    "Name" : "Sara",
   "MobNo" : "030001014029",
   "unRead": "1"
  },
  {
    "Name" : "Amhmad",
   "MobNo" : "03000956713",
   "unRead": "8"
  },
  {
    "Name" : "Ali",
   "MobNo" : "03047895013",
   "unRead": "7"
  },
 ] ;

  //Color bgColor = Colors.blueGrey;
 Decoration myDecor = BoxDecoration(borderRadius: BorderRadius.circular(2),
 color: Colors.blueGrey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.blueGrey[200]),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body:ListView(
          children: arrData.map((value){
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(value["Name"].toString()),
              subtitle: Text(value["MobNo"].toString()),
              trailing: CircleAvatar(child: Text(value["unRead"].toString()),
              backgroundColor: Colors.green,
              radius: 12,),
            );
          }).toList(),
        )
          
      );
  }
} 
/*<<============ Gradient ===============================================>>
void main() {
  runApp(const MyProfile_App());
}

class MyProfile_App extends StatelessWidget {
  const MyProfile_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Profile App",
      theme: ThemeData(
          textTheme: TextTheme(
              headlineLarge: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
              titleMedium: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ))),
      home: Splashpage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePgaeState();
  }
}

class HomePgaeState extends State<HomePage> {
 
 var arrIndex = [1,2,3,4,5,6,7,8,9,10,11] ;

  //Color bgColor = Colors.blueGrey;
 Decoration myDecor = BoxDecoration(borderRadius: BorderRadius.circular(2),
 color: Colors.blueGrey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.blueGrey[200]),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body:Container(
          decoration: BoxDecoration(
            gradient:   RadialGradient(colors: [
              Color(0xffff8177),
               Color(0xfff6d365),
              // Color(0xffb12a5b),
             
            ],
           center: Alignment.bottomCenter,
          
          ),
          
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
            child: Center(child: Image.asset("assets/images/girl.png",
            width: 300,
            height: 200,
            fit: BoxFit.fill,),),),
          ));
  }
} 
======================================================================== */
/* 
======================= ListWheelScrollView ================================
void main() {
  runApp(const MyProfile_App());
}

class MyProfile_App extends StatelessWidget {
  const MyProfile_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Profile App",
      theme: ThemeData(
          textTheme: TextTheme(
              headlineLarge: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
              titleMedium: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ))),
      home: Splashpage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePgaeState();
  }
}

class HomePgaeState extends State<HomePage> {
 
 var arrIndex = [1,2,3,4,5,6,7,8,9,10,11] ;

  //Color bgColor = Colors.blueGrey;
 Decoration myDecor = BoxDecoration(borderRadius: BorderRadius.circular(2),
 color: Colors.blueGrey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.blueGrey[200]),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body:ListWheelScrollView(
          itemExtent: 100,
          children:arrIndex.map((value) => Padding(
            padding:  EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
color: Colors.blue,
borderRadius: BorderRadius.all(Radius.circular(11)),
              ),
              width: double.infinity,
              
              child: Center(
                child: Text("$value",
                style: TextStyle(color: Colors.white,fontSize: 20),),),
            ),
          ),).toList()
          ),
          );
  }
} 
========================================================================
*/
/*============================== Animation =================================
void main() {
  runApp(const MyProfile_App());
}

class MyProfile_App extends StatelessWidget {
  const MyProfile_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Profile App",
      theme: ThemeData(
          textTheme: TextTheme(
              headlineLarge: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
              titleMedium: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ))),
      home: Splashpage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePgaeState();
  }
}

class HomePgaeState extends State<HomePage> {
  var _height = 100.0;
  var _width = 200.0;
  bool flag = true;

  //Color bgColor = Colors.blueGrey;
 Decoration myDecor = BoxDecoration(borderRadius: BorderRadius.circular(2),
 color: Colors.blueGrey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.blueGrey[200]),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 2),
                decoration: myDecor,
                width: _width,
                height: _height,
               //curve: Curves.fastOutSlowIn,
               //curve: Curves.slowMiddle,
               //curve: Curves.bounceIn,
               curve: Curves.bounceInOut,
              
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag) {
                        _width = 100.0;
                        _height = 200.0;
                        //bgColor = Colors.deepOrange;
                        myDecor = BoxDecoration(borderRadius: BorderRadius.circular(50),
                        color: Colors.deepOrange);
                        flag = false;
                      } else {
                        _width = 200.0;
                        _height = 100.0;
                      //  bgColor = Colors.blueGrey;
                       myDecor = BoxDecoration(borderRadius: BorderRadius.circular(2),
                        color: Colors.blueGrey);
                        flag = true;
                      }
                    });
                  },
                  child: Text("Animate")),
            ],
          ),
        ));
  }
} 
================================================================
*/

/*
<< ============================= Range Slider ================================ >>
void main (){

  runApp( MyProfile_App());
}
 
  class MyProfile_App extends StatelessWidget{
   MyProfile_App({super.key});

    

    @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

debugShowCheckedModeBanner: false,
title:  "My Profile App",
      theme: ThemeData(
        
        textTheme: TextTheme(
          
          headlineLarge: TextStyle(fontSize: 21,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontStyle: FontStyle.italic),

          titleMedium: TextStyle(fontSize: 16,
          fontStyle: FontStyle.italic,
          color: Colors.black,)
        )

      ),
      home: Splashpage(),
    );
    

    
  }
  }
  class HomePage extends StatefulWidget{




    @override
  State<StatefulWidget> createState() {
    return HomePgaeState();
    
  }
  }
class HomePgaeState extends State<HomePage>{


   
var num1controller = TextEditingController();
var num2controller = TextEditingController();
var result = 0;
var nameController = TextEditingController();
RangeValues values = RangeValues(1, 100);

  @override
  Widget build(BuildContext context) {
   
   RangeLabels lables = RangeLabels(values.start.toString(), values.end.toString());
   return Scaffold(

    appBar: AppBar(
      title: Text("Home Page",
      style:  TextStyle(color: Colors.blueGrey[200]),),
      backgroundColor: Colors.blueGrey,
    ),
    body: Container(
      color: Colors.blueGrey[200],
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

RangeSlider(
  values: values,
  labels: lables,
  divisions: 10,
  min: 1,
  max: 100,
  activeColor: Colors.blueGrey[800],
  inactiveColor: Colors.blueGrey[400],

   onChanged: (NewValue) {
    values = NewValue;
    print("${NewValue.start},${NewValue.end}");
     setState(() {
       
     });
   },)
      ],
      ),
    ),
    );
    
    
    
  }
  } 
    << ============================================================= >>
    */
   



/*
<< ==== Passing Data From One Screen To Another ======== >>

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:myprofile_app/introPage.dart';
import 'package:myprofile_app/splashPage.dart';


void main (){

  runApp(const MyProfile_App());
}
 
  class MyProfile_App extends StatelessWidget{
  const MyProfile_App({super.key});


    @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

debugShowCheckedModeBanner: false,
title:  "My Profile App",
      theme: ThemeData(
        
        textTheme: TextTheme(
          
          headlineLarge: TextStyle(fontSize: 21,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontStyle: FontStyle.italic),

          titleMedium: TextStyle(fontSize: 16,
          fontStyle: FontStyle.italic,
          color: Colors.black,)
        )

      ),
      home: Splashpage(),
    );
    

    
  }
  }
  class HomePage extends StatefulWidget{




    @override
  State<StatefulWidget> createState() {
    return HomePgaeState();
    
  }
  }
class HomePgaeState extends State<HomePage>{


   
var num1controller = TextEditingController();
var num2controller = TextEditingController();
var result = 0;
var nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
   
   return Scaffold(

    appBar: AppBar(
      title: Text("Home Page",
      style:  TextStyle(color: Colors.blueGrey[200]),),
      backgroundColor: Colors.blueGrey,
    ),
    body: Container(
      color: Colors.blueGrey[200],
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(11.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ),

              controller: nameController,
            ),
          ),

          SizedBox(height: 10,),
          ElevatedButton(
            
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey[800],
            ),
            onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Intropage(nameController.text),),);
          }, child: Text("Next Page",style: TextStyle(color: Colors.grey)),)
        ],
      ),
    ),
    );
    
    
    
  }
  } 
    
    << ========================================================== >>
    */
    
    
     /* 
    
    << =============== CALCULATOR APP ================================ >>
    
    Container(

      decoration: BoxDecoration(color: Colors.blueGrey[200]),
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: 
           Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: num1controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        
                        ),
           
                      ),
                      hintText: "Enter first digit",
           
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        
                        ),
           
                      ),
                    ) ,
                    
                  ),
                  SizedBox(
                    height: 10,
                   ),
                  TextField(
                    controller: num2controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        
                        ),
           
                      ),
                      hintText: "Enter Second digit",
                      
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        
                        ),
           
                      ),
           
                    ) ,
                    
                  ),
           
                  SizedBox(height: 10,),
                   
                
              
             
              Wrap(
                direction: Axis.horizontal,
                children:[ Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                
                
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        ),
                    backgroundColor: Colors.grey
                        ),
                        onPressed: 
                      () {
                        setState(() {
                          
                          var num1 = int.parse( num1controller.text.toString());
                          var num2 = int.parse( num2controller.text.toString());
                          result = num1 + num2 ;


                          
                        });
                      }, child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         // Text("Add",style: TextStyle(fontSize: 16,color: Colors.blueGrey[800]),),
                          Icon(Icons.add,color: Colors.blueGrey[800])
                        ],
                      ),),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        ),
                    backgroundColor: Colors.grey
                        ),
                        onPressed: 
                      () {
                        setState(() {
                          
                        var num1 = int.parse( num1controller.text.toString());
                        var num2 = int.parse( num2controller.text.toString());
                        result = num1 - num2;
                        });
                        
                      }, child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //Text("Subtract",style: TextStyle(fontSize: 16,color: Colors.blueGrey[800]),),
                          Icon(Icons.remove,color: Colors.blueGrey[800]),
                        ],
                      ),),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        ),
                    backgroundColor: Colors.grey
                        ),
                        onPressed: 
                      () {

                       setState(() {
                         var num1 =  int.parse(num1controller.text.toString());
                       var num2 =  int.parse(num2controller.text.toString());
                    
                    result = num1 * num2;
                       });
                        
                      }, child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         // Text("Multiply",style: TextStyle(fontSize: 16,color: Colors.blueGrey[800]),),
                          Icon(Icons.close,color: Colors.blueGrey[800],),
                        ],
                      ),),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        ),
                    backgroundColor: Colors.grey
                        ),
                        onPressed: 
                      () {
                        setState(() {
                          
                          var num1 = int.parse(num1controller.text.toString());
                       var num2 = int.parse(num2controller.text.toString());
                       result = num1 ~/num2;
                        
                        });
                       

                        
                      }, child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("/",style: TextStyle(fontSize: 25,color: Colors.blueGrey[800]),),
                          
                        ],
                      ),),
                    
                  ],
                ),
                SizedBox(height: 80,),

                Center(child: Text("Result: $result",style: TextStyle(fontSize: 20),))
                ]
              ),
         
                ]
           ),
     ),

    ),
   );
  }
}


<< ==================================================================== >>
*/

/*

<< ==== Updating correctly with Stateful widget + Made a calculator App ==== >>
                   

void main (){

  runApp(const MyProfile_App());
}
 
  class MyProfile_App extends StatelessWidget{
  const MyProfile_App({super.key});


    @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

debugShowCheckedModeBanner: false,
title:  "My Profile App",
      theme: ThemeData(
        
        textTheme: TextTheme(
          
          headlineLarge: TextStyle(fontSize: 21,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontStyle: FontStyle.italic),

          titleMedium: TextStyle(fontSize: 16,
          fontStyle: FontStyle.italic,
          color: Colors.black,)
        )

      ),
      home: HomePage(),
    );
    

    
  }
  }
  class HomePage extends StatefulWidget{
    @override
  State<StatefulWidget> createState() {
    return HomePgaeState();
    
  }
  }
class HomePgaeState extends State<HomePage>{

   
var num1controller = TextEditingController();
var num2controller = TextEditingController();
var result = 0;

  @override
  Widget build(BuildContext context) {
   
   return Scaffold(

    appBar: AppBar(
      title: Text("Home Page",
      style:  TextStyle(color: Colors.grey),),
      backgroundColor: Colors.blueGrey,
    ),
    body: Container(

      decoration: BoxDecoration(color: Colors.blueGrey[200]),
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: 
           Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: num1controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        
                        ),
           
                      ),
                      hintText: "Enter first digit",
           
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        
                        ),
           
                      ),
                    ) ,
                    
                  ),
                  SizedBox(
                    height: 10,
                   ),
                  TextField(
                    controller: num2controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        
                        ),
           
                      ),
                      hintText: "Enter Second digit",
                      
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        
                        ),
           
                      ),
           
                    ) ,
                    
                  ),
           
                  SizedBox(height: 10,),
                   
                
              
             
              Wrap(
                direction: Axis.horizontal,
                children:[ Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                
                
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        ),
                    backgroundColor: Colors.grey
                        ),
                        onPressed: 
                      () {
                        setState(() {
                          
                          var num1 = int.parse( num1controller.text.toString());
                          var num2 = int.parse( num2controller.text.toString());
                          result = num1 + num2 ;


                          
                        });
                      }, child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Add",style: TextStyle(fontSize: 16,color: Colors.blueGrey[800]),),
                          
                        ],
                      ),),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        ),
                    backgroundColor: Colors.grey
                        ),
                        onPressed: 
                      () {
                        setState(() {
                          
                        var num1 = int.parse( num1controller.text.toString());
                        var num2 = int.parse( num2controller.text.toString());
                        result = num1 - num2;
                        });
                        
                      }, child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Subtract",style: TextStyle(fontSize: 16,color: Colors.blueGrey[800]),),
                          
                        ],
                      ),),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        ),
                    backgroundColor: Colors.grey
                        ),
                        onPressed: 
                      () {

                       setState(() {
                         var num1 =  int.parse(num1controller.text.toString());
                       var num2 =  int.parse(num2controller.text.toString());
                    
                    result = num1 * num2;
                       });
                        
                      }, child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Multiply",style: TextStyle(fontSize: 16,color: Colors.blueGrey[800]),),
                          
                        ],
                      ),),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        ),
                    backgroundColor: Colors.grey
                        ),
                        onPressed: 
                      () {
                        setState(() {
                          
                          var num1 = int.parse(num1controller.text.toString());
                       var num2 = int.parse(num2controller.text.toString());
                       result = num1 ~/num2;
                        
                        });
                       

                        
                      }, child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Divide",style: TextStyle(fontSize: 16,color: Colors.blueGrey[800]),),
                          
                        ],
                      ),),
                    
                  ],
                ),
                SizedBox(height: 80,),

                Center(child: Text("Result: $result",style: TextStyle(fontSize: 20),))
                ]
              ),
         
                ]
           ),
     ),

    ),
   );
  }
}

<< =========================================================================== >>
 */

















 


  /* 
  
  << =============== Stateful widget + Making Counter App ================ >>
  
  class HomePage extends StatefulWidget{



  @override
  State<StatefulWidget> createState() {
  return HomePgaeState();
  }
}
    class HomePgaeState extends State<HomePage>{

@override

var counter = 0;
  void incrementCounter(){

  setState(() {
    
    counter++;

  },);
   
}

      @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.deepPurple[100],
      ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    
         Expanded(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Number of times you have incremented the count.",
              style: TextStyle(fontSize: 16),),
              Text("$counter",style: TextStyle(fontSize: 21),),
             
            ],
                   ),
         ),
      
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             FloatingActionButton(onPressed: incrementCounter,
             
              child: Icon(Icons.add,size: 40,),
              elevation: 6,
              ),
           ],
         ),
       ),
    ],
  ),
),


    );
    
  }
    }
  
  << ================================================================== >>
   */

/*
  
  << =========================== Positioned Widget ================================ >> 

Container(
  width: 300,
  height: 200,
  color: Colors.blueGrey,
  child: Stack(
    children: [
      Positioned(
        top: 1,
        right: 1,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.white,
        ),
      ),
    ]),
),
  
  << ========================================================================= >>
*/

/*
  
  << ============ Rich Text Widget ===================== >>
  RichText(
  
  text: TextSpan(
    style: TextStyle(fontSize: 21,color: Colors.grey),
    children: [
     
     TextSpan(text: " Hello "),
     TextSpan(text: "World!",style: TextStyle(fontSize: 34,
     fontWeight: FontWeight.bold,color: Colors.blue),),
     TextSpan(text: "Welcome to "),
     TextSpan(text: "Flutter",style: TextStyle(
      fontSize: 43,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      color: Colors.deepOrange,
      fontFamily: "Font1",
     )),
    ],
  
  ),
  
  ),
),

<< ====================================================================>>
*/

/*Column(
 
 << ========================== Sized Box ================================= >>
    
      children: [
        SizedBox.square(
     dimension: 100,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: ContinuousRectangleBorder(),
          ),
          onPressed:  () {
        
      }, child: Text("Click",style: TextStyle(color: Colors.white),),
      ),
      ),

      SizedBox(
        height: 20,
      ),
        SizedBox.square(
     dimension: 100,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: ContinuousRectangleBorder(),
          ),
          onPressed:  () {
        
      }, child: Text("Click",style: TextStyle(color: Colors.white),),
      ),
      ),
      SizedBox(
        height: 50,
      ),
        SizedBox.square(
     dimension: 100,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: ContinuousRectangleBorder(),
          ),
          onPressed:  () {
        
      }, child: Text("Click",style: TextStyle(color: Colors.white),),
      ),
      ),
    
      ]
),
<< ========================================================================== >>
*/

/*
 << ==================== Wrap Widget ====================== >>
Container(
  width: double.infinity,
  height: double.infinity,
  child: Wrap(
    direction: Axis.vertical,
    alignment: WrapAlignment.spaceEvenly,
    spacing: 11,
    runSpacing: 11,
    children: [
    Container(
      height: 100,
      width: 100,
      color: Colors.amber,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.pink,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.teal,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.red,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.indigo,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.cyan,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.purple,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.green,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.grey,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
  ],),
)
<< =================================================== >>*/


/* << =============== yaha pr Custom widget wala code ana tha. 
                      wo erase kr diya tha ===============>> */


/*

<< =============== Icon =============== >>

Center(child: Icon(Icons.play_circle_outline,
size: 100,
color: const Color.fromARGB(255, 216, 178, 63),)) ,

<< ======================================================================= >>
*/

 // <------------- Stack ------------->
      // body: Container(
      //   height: 300,
      //   width: 300,
      //   child: Stack(
        
      //     children: [
      //       Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.blueGrey,
      //       ),
      //       Positioned(
      //         left: 21,
              
      //         bottom: 21,
              
      //         child: Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.grey,
      //         ),
      //       ),
      //     ],
      //   ),

      //<======================================================================>

/* "splitting App into Widgets"
      put this in body 
    // catItems(),
            // Contacts(),
            // BlackRec(),
            // BlueSqu(),  }
// class catItems extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 2,
//       child: Container(
//         color: Colors.green,
//         child: ListView.builder(
//           itemBuilder: (context, index) => Padding(
//             padding: EdgeInsets.all(8),
//             child: CircleAvatar(
//               backgroundColor: Colors.blue,
//               radius: 30,
//             ),
//           ),
//           itemCount: 10,
//           scrollDirection: Axis.horizontal,
//         ),
//       ),
//     );
//   }
// }

// class Contacts extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 4,
//       child: Container(
//         color: Colors.lightBlue,
//         child: Padding(
//           padding: EdgeInsets.all(8),
//           child: ListView.builder(
//             itemBuilder: (context, index) {
//               return ListTile(
//                 leading: CircleAvatar(
//                   backgroundColor: Colors.grey,
//                 ),
//                 title: Text("Name"),
//                 subtitle: Text("Mobile number"),
//                 trailing: Icon(Icons.phone),
//               );
//             },
//             itemCount: 10,
//             scrollDirection: Axis.vertical,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class BlackRec extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 3,
//       child: Container(
//         color: Colors.blueGrey,
//         child: ListView.builder(
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.black,
//               ),
//             );
//           },
//           itemCount: 10,
//           scrollDirection: Axis.horizontal,
//         ),
//       ),
//     );
//   }
// }

// class BlueSqu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.lightGreen,
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.indigo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.indigo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.indigo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.indigo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.indigo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/