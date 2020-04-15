import 'package:flutter/material.dart';
import 'package:projeto_calculadora/util/ProcessorUtil.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  ProcessorUtil processor = new ProcessorUtil();
  MediaQueryData media;
  String text = "";

  @override
  Widget build(BuildContext context) {
    media = MediaQuery.of(context);
  
    return Scaffold(
      backgroundColor: Color(0xFF74F1CB),
      appBar: null,
      body: Column(
        children: <Widget>[
          display(),
          grid()
        ],
      ),
    );
  }

  Widget display(){
    return Expanded(
      child: Align(
        alignment: FractionalOffset.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: displayText(),
        ),
      ),
    );
  }

  Widget displayText(){
    return Text(
      text,
      textAlign: TextAlign.end,
      style: TextStyle(
        color: Color(0xFFF4F5F4),
        fontSize: 45,
        fontWeight: FontWeight.w300
      ),
    );
  }

  Widget grid(){
    return Column(
      children: <Widget>[
        row(
          ["7", "8", "9", "-"]
        ),
        row(
          ["4", "5", "6", "+"]
        ),
        row(
          ["1", "2", "3", "*"]
        ),
        row(
          ["0", "AC", "=", "/"]
        )
      ],
    );
  }

  Widget row(List<String> list){
    List<Widget> buttonsList = new List<Widget>();

    for (var item in list) 
      buttonsList.add(button(item));
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttonsList,
    );
  }

  Widget button(String value){
    double buttonSize = (media.size.width / 4);
    return MaterialButton(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0) ),
      color: Color(0xFF1F2020),
      minWidth: buttonSize,
      height: buttonSize,
      child: Text(
        value,
        style: TextStyle(
          fontSize: 30,
          color: Color(0xFFF4F5F4),
          fontWeight: FontWeight.w300
        ),
      ),
      onPressed: () {
        add(value);
      }
    );
  }

  add(String value){
    setState(() {
      text = processor.addOnDisplay(value);
    });
  }
}