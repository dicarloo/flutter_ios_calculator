import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.color, required this.text});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(4),
      width: screenWidth * 0.2,
      height: screenWidth * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
      child: GestureDetector(
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
