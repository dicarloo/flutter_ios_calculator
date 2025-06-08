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
                Button(color: Color(0xFF2A2A2C), text: '4'),
                Button(color: Color(0xFF2A2A2C), text: '5'),
                Button(color: Color(0xFF2A2A2C), text: '6'),
                Button(color: Color(0xFFFF9F0A), text: '-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: Color(0xFF2A2A2C), text: '1'),
                Button(color: Color(0xFF2A2A2C), text: '2'),
                Button(color: Color(0xFF2A2A2C), text: '3'),
                Button(color: Color(0xFFFF9F0A), text: '+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: Colors.black, text: ' '),
                Button(color: Color(0xFF2A2A2C), text: '0'),
                Button(color: Color(0xFF2A2A2C), text: '.'),
                Button(color: Color(0xFFFF9F0A), text: '='),
              ],
            ),
           
            
          ],
        ),
      ),
    );
  }
}
