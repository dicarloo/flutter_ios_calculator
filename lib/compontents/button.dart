import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.color, required this.text, this.onPressed});
  final Color color;
  final String text;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(4),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          fixedSize: Size(screenWidth * 0.2, screenWidth * 0.2),
          backgroundColor: color,
        ),
      
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 35),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  } 
}
