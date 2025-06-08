import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.color, required this.text});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: color,
      width: screenWidth * 0.2,
      height: screenWidth * 0.2,
      child: Text(text,style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
    );
  }
}