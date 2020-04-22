import 'package:projeto_futebol/models/TeamModel.dart';
import 'package:projeto_futebol/repository/TrophysRepository.dart';

import 'Database.dart';

class TeamsRepository {

  static Future<List<TeamModel>> findAllAsync() async {
    Database db = Database();
    await db.createDatabase();

    List<TeamModel> teams = new List<TeamModel>();

    if(db.created){
      teams.add(
      new TeamModel(
        "brasil.png",
        "Brasil", 
        "Formada em 1914, é a seleção mais bem-sucedida da história do futebol mundial, sendo a recordista em conquistas em Copas do Mundo, com cinco títulos invictos e quatro títulos da Copas das Confederações.",
        trophies: TrophysRepository.findByName("Brasil")
      ), 
    );

    teams.add(
      new TeamModel(
        "portugal.png",
        "Portugal", 
        "Durante várias décadas, a seleção portuguesa não fez parte de um grupo de equipes candidatas a vencer títulos, mas desde 2000, a equipe portuguesa evoluiu, marcando presença em todas as fases finais de grandes torneios.",
        trophies: TrophysRepository.findByName("Portugal")
      )
    );

    teams.add(
      new TeamModel(
        "italia.png",
        "Itália", 
        "A equipe é uma das seleções bem sucedidas na história das Copas do Mundo, tendo disputado seis finais e saído vitoriosa em quatro, ficando com o vice-campeonato em 1970 e 1994. Outras duas boas campanhas foram o terceiro lugar em 1990 e o quatro em 1974.",
        trophies: TrophysRepository.findByName("Itália")
      )
    );

    teams.add(
      new TeamModel(
        "espanha.png",
        "Espanha", 
        "É organizada pela Real Federação Espanhola de Futebol. É uma das confederações fundadoras da FIFA e um dos países com mais participações em Copas do Mundo. Entre os seus títulos, destacam-se a Copa do Mundo de 2010 e os campeonatos europeus de futebol de 1964, 2008 e 2012.",
        trophies: TrophysRepository.findByName("Espanha")
      )
    );

    teams.add(
      new TeamModel(
        "belgica.png",
        "Bélgica", 
        "Nas eliminatórias para a Copa do Mundo de 2014, ganhou quase todos os jogos, pois empatou apenas dois e não perdeu nenhum. Na Copa de 2014 fez uma boa campanha chegando as quartas de final e caindo para a Argentina, quando havia vencido 4 partidas, algo até então inédito para a Bélgica.",
        trophies: TrophysRepository.findByName("Bélgica")
      )
    );

    teams.add(
      new TeamModel(
        "franca.png",
        "França", 
        "Campeã da Copa do Mundo pela primeira vez em 1998, a seleção francesa conquistou o segundo título mundial em 2018, na Rússia, após derrotar a Croácia na final por 4 a 2. Atualmente, conta com Mbappé como maior jogador de destaque.",
        trophies: TrophysRepository.findByName("França")
      )
    );
  }
    return teams;
  }
}