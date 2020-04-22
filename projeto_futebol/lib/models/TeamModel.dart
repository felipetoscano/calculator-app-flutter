import 'TrophyModel.dart';

class TeamModel {
  final String image;
  final String name;
  final String about;
  final List<TrophyModel> trophies;

  TeamModel(this.image, this.name, this.about, {this.trophies});
}