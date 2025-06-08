import 'package:flutter/material.dart';
import 'package:flutter_ios_calculator/compontents/button.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF000000),
      body: Center(
        child: Button(color: Colors.white, text: '0'),
      ),
    );
  }
}
