import 'package:flutter/material.dart';
import 'package:projeto_futebol/models/TrophyModel.dart';

class TrophiesScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    List<TrophyModel> trophies = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Copas do mundo"),
      ),
      body: ListView( 
        children: _trophyItens(trophies) 
      ),
    );
  }

  _trophyItens(List<TrophyModel> trophies){
    List customTrophies = new List<Widget>();

    for (var trophy in trophies) 
      customTrophies.add(trophyItem(trophy));

    return customTrophies;
  }

  trophyItem(TrophyModel trophy){
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: containerDecoration(),
      child: Row(
        children: <Widget>[
          trophyItemImage(),
          trophyItemInformation(trophy)
        ],
      ),
    );
  }

  containerDecoration() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow (
          color: Colors.black12,
          blurRadius: 10.0,
          spreadRadius: 10.0,
        ),
      ],
      color: Color.fromRGBO(255, 255, 255, 1),
      borderRadius: BorderRadius.all(Radius.circular(10))
    );
  }

  trophyItemImage() {
    return Image(
      width: 75,
      image: AssetImage('assets/trophy.png') 
    );
  }

  trophyItemInformation(TrophyModel trophy) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          trophyItemInformationYear(trophy.year),
          trophyItemInformationCountry(trophy.country)
        ],
      );
  }

  trophyItemInformationYear(int year) {
    return Text(
      year.toString(),
      style: TextStyle(
        color: Color(0xff1a3c40),
        fontSize: 30
      ),
    );
  }

  trophyItemInformationCountry(String country) {
    return Text(
      "País sede: " + country,
      style: TextStyle(
        color: Color(0xff1a3c40),
        fontWeight: FontWeight.w300
      ),
    );
  }
}