import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_futebol/models/TeamModel.dart';
import 'package:projeto_futebol/repository/TeamsRepository.dart';

class TeamsScreen extends StatefulWidget{
  @override
  _TeamsScreenState createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Principal"),
        leading: Container(),
      ),
      body: FutureBuilder<List<TeamModel>>(
        future: TeamsRepository.findAllAsync(),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.done ? buildGrid(snapshot.data) : loadingAnimation();
        },
      ),
    );
  }

  loadingAnimation() {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: Color(0xFF1a3c40),
      ),
    );
  }

  buildGrid(List<TeamModel> teams){
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
        teams == null ? 0 : teams.length, (index) {
        return teamItem(teams[index]);
      }), 
      
    );
  }

  teamItem(TeamModel team){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        decoration: teamItemDecoration(),
        child: Column(
          children: <Widget>[
            teamItemImage(team.image),
            teamItemName(team.name),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(
          context, 
          '/details', 
          arguments: team
        );
      },
    );
  }

  teamItemDecoration() {
    return BoxDecoration(
      color: Color(0xffffffff),
      boxShadow: [
        BoxShadow (
          color: Colors.black12,
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(30)
      )
    );
  }

  teamItemImage(String teamImage) {
    return Image(
      image: AssetImage('assets/' + teamImage)
    );
  }

  teamItemName(String teamName) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Text(
        teamName,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Color(0xff1a3c40)
        ),
      ),
    );
  }
}
