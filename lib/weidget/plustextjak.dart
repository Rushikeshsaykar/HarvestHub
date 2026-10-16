import 'package:flutter/material.dart';

class CustomTextplusjak extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final  double height;
   

  const CustomTextplusjak(
    
    this.text, {
      this.height=1,
    super.key,
    this.color = Colors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      
      style: TextStyle(
        height: height,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: "plusjak"
      ),
    );
  }
}