import 'package:flutter/material.dart';
import 'package:ui_design/utils/constants.dart';
import 'package:ui_design/utils/widget_functions.dart';
 class Optionbutton extends StatelessWidget {
   final String text;
   final IconData icon;
   final double width;

  const Optionbutton({super.key, required this.text, required this.icon, required this.width});


   @override
   Widget build(BuildContext context) {
     return FlatButton(
       minWidth:width,
           color:COLOR_DARK_BLUE,
       shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),
     padding const EdgeInsets.symmetric(horizontal: 20,vertical: 15)
     onPressed(){},
     child Row(
     children: [
       Icon(icon,color: COLOR_WHITE,),
     addHorizontalSpace(10),
     Text(text,style: TextStyle(color: COLOR_WHITE),)
     ],
     )
     );

   }
 }
