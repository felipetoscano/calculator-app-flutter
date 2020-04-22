import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_futebol/models/TeamModel.dart';
import 'package:projeto_futebol/models/TrophyModel.dart';

class DetailsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    TeamModel team = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(team.name),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: <Widget>[
            image(team.image),
            name(team.name),
            about(team.about),
            trophies(team.trophies.length),
            button(context, team.trophies)
          ],
        ),
      ),
    );
  }

  image(String image) {
    return Image(
      image: AssetImage('assets/' + image)
    );
  }

  name(String name) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 36,
          color: Color(0xff1a3c40),
          fontWeight: FontWeight.w300
        ),
      ),
    );
  }

  about(String about) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        about,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Color(0xff1a3c40),
        ),
      ),
    );
  }

  trophies(int count){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        trophiesImage(),
        trophiesCount(count)
      ],
    );
  }

  trophiesImage(){
    return Image(
      width: 75,
      image: AssetImage('assets/trophy.png')
    );
  }

  trophiesCount(int count){
    return Text(
      count.toString(),
      style: TextStyle(
        fontSize: 30
      ),
    );
  }

  button(BuildContext context, List<TrophyModel> trophies) {
    return Visibility(
      visible: trophies.length > 0,
      child: Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
            child: RaisedButton(
              color: Color(0xff1a3c40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                "Ver troféus",
                style: TextStyle(
                  color: Color(0xFFECECEC) 
                ),
              ),
                onPressed: () {
                  Navigator.pushNamed(
                    context, 
                    '/trophies', 
                    arguments: trophies
                  );
                },
              ),
        ),
      ),
    );
  }

}