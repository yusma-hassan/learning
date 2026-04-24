import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{

final String buttonName;
final Icon? icon;
final TextStyle? textStyle;
final Color? backgroundColor;
final VoidCallback? callBack;

const RoundedButton(
  {super.key, 
    required this.buttonName ,
    this.icon ,
    this.backgroundColor = Colors.blue,
    this.callBack,
    this.textStyle,
  }
);


   @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(onPressed: () {

      callBack!();
      
    },
      
      
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shadowColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
           Radius.circular(21),
           
          ),
        ),
      ), child: 
    icon != null ?
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          SizedBox(
            height: 10,
            width: 10,
          ),
          Text(buttonName,style: textStyle,),
        ],
      ): 
      Text(buttonName,style: textStyle,),);
    
  }
}