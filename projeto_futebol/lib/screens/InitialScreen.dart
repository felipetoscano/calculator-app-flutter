import 'dart:async';

import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  
  @override
  void initState() {
    super.initState();
    startTime();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          image(),
          title()
        ],
      )
    );
  }
  
  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushNamed(
      context, 
      '/teams', 
    );
  }

  image(){
    return Image(
      image: AssetImage('assets/trophy.png'),
    );
  }

  title(){
    return Text(
      "PesquiCopa",
      style: TextStyle(
        fontSize: 40,
        color: Color(0xff1a3c40),
        fontWeight: FontWeight.w300
      ),
    );
  }
}