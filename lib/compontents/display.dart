import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   color: const Color(0xFF2A2A2C),
      // ),
      padding: const EdgeInsets.all(15),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
      ),
    );
  }
}