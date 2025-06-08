import 'package:flutter/material.dart';
import 'package:flutter_ios_calculator/compontents/button.dart';
import 'package:flutter_ios_calculator/compontents/display.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Display(text: '0sadsad'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: const Color(0xFF2A2A2C), text: 'AC', onPressed: () {}),
                Button(color: const Color(0xFF2A2A2C), text: '+/-', onPressed: () {}),
                Button(color: const Color(0xFF2A2A2C), text: '%', onPressed: () {}),
                Button(color: const Color(0xFFFF9F0A), text: '÷', onPressed: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: const Color(0xFF2A2A2C), text: '7', onPressed: () {}),
                Button(color: const Color(0xFF2A2A2C), text: '8', onPressed: () {}),
                Button(color: const Color(0xFF2A2A2C), text: '9', onPressed: () {}),
                Button(color: const Color(0xFFFF9F0A), text: '×', onPressed: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: const Color(0xFF2A2A2C), text: '4', onPressed: () {}),
                Button(color: const Color(0xFF2A2A2C), text: '5', onPressed: () {}),
                Button(color: const Color(0xFF2A2A2C), text: '6', onPressed: () {}),
                Button(color: const Color(0xFFFF9F0A), text: '-', onPressed: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: const Color(0xFF2A2A2C), text: '1', onPressed: () {}),
                Button(color: const Color(0xFF2A2A2C), text: '2', onPressed: () {}),
                Button(color: const Color(0xFF2A2A2C), text: '3', onPressed: () {}),
                Button(color: const Color(0xFFFF9F0A), text: '+', onPressed: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: const Color.fromARGB(255, 0, 0, 0), text: ' '),
                Button(color: const Color(0xFF2A2A2C), text: '0', onPressed: () {}),
                Button(color: const Color(0xFF2A2A2C), text: '.', onPressed: () {}),
                Button(color: const Color(0xFFFF9F0A), text: '=', onPressed: () {}),
              ],
            ),
           
            
          ],
        ),
      ),
    );
  }
}
