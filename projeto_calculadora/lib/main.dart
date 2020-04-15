import 'package:flutter/material.dart';
import 'package:projeto_calculadora/screen/CalculatorScreen.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: CalculatorScreen()
    );
  }
}