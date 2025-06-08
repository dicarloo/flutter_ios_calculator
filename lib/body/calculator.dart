import 'package:flutter/material.dart';
import 'package:flutter_ios_calculator/compontents/button.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: Color(0xFF2A2A2C), text: 'AC', enabled: true),
                Button(color: Color(0xFF2A2A2C), text: '+/-', enabled: true),
                Button(color: Color(0xFF2A2A2C), text: '%', enabled: true),
                Button(color: Color(0xFFFF9F0A), text: '÷', enabled: true),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: Color(0xFF2A2A2C), text: '7', enabled: true),
                Button(color: Color(0xFF2A2A2C), text: '8', enabled: true),
                Button(color: Color(0xFF2A2A2C), text: '9', enabled: true),
                Button(color: Color(0xFFFF9F0A), text: '×', enabled: true),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: Color(0xFF2A2A2C), text: '4', enabled: true),
                Button(color: Color(0xFF2A2A2C), text: '5', enabled: true),
                Button(color: Color(0xFF2A2A2C), text: '6', enabled: true),
                Button(color: Color(0xFFFF9F0A), text: '-', enabled: true),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: Color(0xFF2A2A2C), text: '1', enabled: true),
                Button(color: Color(0xFF2A2A2C), text: '2', enabled: true),
                Button(color: Color(0xFF2A2A2C), text: '3', enabled: true),
                Button(color: Color(0xFFFF9F0A), text: '+', enabled: true),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: Colors.black, text: ' ', enabled: false),
                Button(color: Color(0xFF2A2A2C), text: '0', enabled: true),
                Button(color: Color(0xFF2A2A2C), text: '.', enabled: true),
                Button(color: Color(0xFFFF9F0A), text: '=', enabled: true),
              ],
            ),
           
            
          ],
        ),
      ),
    );
  }
}
