
import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle textStyle1(){
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 48,
    fontFamily: 'Main Font',
    color: Colors.blue.shade900,
  );
}

TextStyle textStyle2({Color textColor = Colors.black,FontWeight fontWeight = FontWeight.w200 , FontStyle fontStyle = FontStyle.normal ,}){
  return TextStyle(
    fontWeight: fontWeight,
    fontSize: 25,
    fontStyle: fontStyle,
    fontFamily: 'Main Font',
    color: textColor,
  );
}