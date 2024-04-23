import 'package:flutter/material.dart';

class AppWidget{
  
  static TextStyle boldedText(){
    return  TextStyle(
          color: Colors.black, 
          fontSize: 20.0, 
          fontFamily: 'Jersey25');
  }

  
  static TextStyle headLineText(){
    return  TextStyle(
          color: Colors.black, 
          fontSize: 24.0, 
          fontFamily: 'Jersey25');
  }

    static TextStyle lightText(){
    return  TextStyle(
          color: Colors.black38, 
          fontSize: 16.0,
           fontWeight: FontWeight.w500,
          fontFamily: 'Jersey25');
  }
}