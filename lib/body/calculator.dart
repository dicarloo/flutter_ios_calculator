import 'package:flutter/material.dart';
import 'package:flutter_ios_calculator/compontents/button.dart';
import 'package:flutter_ios_calculator/compontents/display.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {


  String _displayValue = '0';
  int _displayValueInt = 0;

  int _firstNumber = 0;
  int _secondNumber = 0;
  String _operator = '';

  void _onButtonPressed(int value) {
    setState(() {
      _displayValueInt = _displayValueInt * 10 + value;
    });
  }

  void ac() {
    setState(() {
      _displayValueInt = 0;
      _firstNumber = 0;
      _secondNumber = 0;
    });
  }

  void plusMinus() {
    setState(() {
      _displayValueInt = _displayValueInt * -1;
    });
  }

  void plus() {
    setState(() {
      _operator = '+';
      _firstNumber = _displayValueInt;
      _displayValueInt = 0;

    });
  }

  void minus() {
    setState(() {
      _operator = '-';
      _firstNumber = _displayValueInt;
      _displayValueInt = 0;
    });
  }

  void multiply() {
    setState(() {
      _operator = '×';
      _firstNumber = _displayValueInt;
      _displayValueInt = 0;
    });
  }

  void divide() {
    setState(() {
      _operator = '÷';
      _firstNumber = _displayValueInt;
      _displayValueInt = 0;
    });
  }

  void equal() {
    if (_operator == '+') {
      setState(() {
        _displayValueInt = _firstNumber + _displayValueInt;
      });
    } else if (_operator == '-') {
      setState(() {
        _displayValueInt = _firstNumber - _displayValueInt;
      });
    } else if (_operator == '×') {
      setState(() {
        _displayValueInt = _firstNumber * _displayValueInt;
      });
    } else if (_operator == '÷') {
      setState(() {
        _displayValueInt = _firstNumber ~/ _displayValueInt;
      });
    }
    
  }

  

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
                Display(text: _displayValueInt.toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: const Color(0xFF2A2A2C), text: 'AC', onPressed: () => ac()),
                Button(color: const Color(0xFF2A2A2C), text: '+/-', onPressed: () => plusMinus()),
                Button(color: const Color(0xFF2A2A2C), text: '%', onPressed: () => {}),
                Button(color: const Color(0xFFFF9F0A), text: '÷', onPressed: () => divide()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: const Color(0xFF2A2A2C), text: '7', onPressed: () => _onButtonPressed(7)),
                Button(color: const Color(0xFF2A2A2C), text: '8', onPressed: () => _onButtonPressed(8)),
                Button(color: const Color(0xFF2A2A2C), text: '9', onPressed: () => _onButtonPressed(9)),
                Button(color: const Color(0xFFFF9F0A), text: '×', onPressed: () => multiply()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: const Color(0xFF2A2A2C), text: '4', onPressed: () => _onButtonPressed(4)),
                Button(color: const Color(0xFF2A2A2C), text: '5', onPressed: () => _onButtonPressed(5)),
                Button(color: const Color(0xFF2A2A2C), text: '6', onPressed: () => _onButtonPressed(6)),
                Button(color: const Color(0xFFFF9F0A), text: '-', onPressed: () => minus()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: const Color(0xFF2A2A2C), text: '1', onPressed: () => _onButtonPressed(1)),
                Button(color: const Color(0xFF2A2A2C), text: '2', onPressed: () => _onButtonPressed(2)),
                Button(color: const Color(0xFF2A2A2C), text: '3', onPressed: () => _onButtonPressed(3)),
                Button(color: const Color(0xFFFF9F0A), text: '+', onPressed: () => plus()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(color: const Color.fromARGB(255, 0, 0, 0), text: ' '),
                Button(color: const Color(0xFF2A2A2C), text: '0', onPressed: () => {}),
                Button(color: const Color(0xFF2A2A2C), text: '.', onPressed: () => {}),
                Button(color: const Color(0xFFFF9F0A), text: '=', onPressed: () => equal()),
              ],
            ),
           
            
          ],
        ),
      ),
    );
  }
}
