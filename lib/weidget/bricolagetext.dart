import 'package:flutter/material.dart';

class CustomTextBricolage extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
   final double height;

  const CustomTextBricolage(
    this.text, {
    super.key,
    this.color = Colors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.height=1.1
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
        fontFamily: "Bricolage"
      ),
    );
  }
}