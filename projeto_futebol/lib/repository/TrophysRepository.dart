import 'package:projeto_futebol/models/TrophyModel.dart';

class TrophysRepository {
  
  static findByName(String name) {
    List<TrophyModel> trophies = new List<TrophyModel>();

    switch(name){
      case "Brasil":
        trophies = _brazilTrophies();
        break;
      case "Espanha":
        trophies = _spainTrophies();
        break;
      case "Itália":
        trophies = _italyTrophies();
        break;
      case "França":
        trophies = _franceTrophies();
        break;
      default:
        break;
    }
    
    return trophies;
  }

  static _brazilTrophies(){
    List<TrophyModel> trophies = new List<TrophyModel>();

    trophies.add(
      new TrophyModel(
        1958,
        "Suécia"
      )
    );

    trophies.add(
      new TrophyModel(
        1962,
        "Chile"
      )
    );

    trophies.add(
      new TrophyModel(
        1970,
        "México"
      )
    );

    trophies.add(
      new TrophyModel(
        1994,
        "Estados Unidos"
      )
    );

    trophies.add(
      new TrophyModel(
        2002,
        "Coreia do Sul/Japão"
      )
    );

    return trophies;
  }

  static _spainTrophies(){
    List<TrophyModel> trophies = new List<TrophyModel>();

    trophies.add(
      new TrophyModel(
        2010,
        "África do Sul"
      )
    );

    return trophies;
  }

  static _italyTrophies(){
    List<TrophyModel> trophies = new List<TrophyModel>();

    trophies.add(
      new TrophyModel(
        1934,
        "Itália"
      )
    );

    trophies.add(
      new TrophyModel(
        1938,
        "França"
      )
    );

    trophies.add(
      new TrophyModel(
        1982,
        "Espanha"
      )
    );

    trophies.add(
      new TrophyModel(
        2006,
        "Alemanha"
      )
    );

    return trophies;
  }

  static _franceTrophies(){
    List<TrophyModel> trophies = new List<TrophyModel>();

    trophies.add(
      new TrophyModel(
        1998,
        "França"
      )
    );

    trophies.add(
      new TrophyModel(
        2018,
        "Rússia"
      )
    );

    return trophies;
  }

}