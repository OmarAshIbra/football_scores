import 'package:football_scores/models/players.dart';

class PlayersApi {
  static List<PlayersModels> pListPlayers = [
    PlayersModels(
      id: 0,
      name: 'Karim Benzema',
      image:
          'https://www.realmadrid.com/img/vertical_380px/benzema_380x501_20201203095836.jpg',
      number: 23,
      rate: 8.6,
    ),
    PlayersModels(
      id: 1,
      name: 'Solaiman AlDokhail',
      image:
          'https://icdn.psgtalk.com/wp-content/uploads/2022/09/Kylian-Mbappe-goal-celebration-PSG-vs-Juventus-Champions-League-2022-1-630x420.jpg',
      number: 10,
      rate: 5.5,
    ),
    PlayersModels(
      id: 2,
      name: 'Javi Hernández',
      image:
          'https://www.realmadrid.com/img/vertical_380px/javier_hernandez_550x650_20200907065033.jpg',
      number: 07,
      rate: 3.6,
    ),
    PlayersModels(
      id: 3,
      name: 'Cristiano Ronaldo',
      image:
          'https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg',
      number: 20,
      rate: 7.1,
    ),
    PlayersModels(
      id: 4,
      name: 'Hazard',
      image:
          'https://www.realmadrid.com/img/vertical_380px/hazard_380x501_20201203095855.jpg',
      number: 99,
      rate: 7.2,
    ),
    PlayersModels(
      id: 5,
      name: 'Marcelo',
      image:
          'https://www.realmadrid.com/img/vertical_380px/marcelo_380x501_20201203095832.jpg',
      number: 21,
      rate: 7.3,
    ),
    PlayersModels(
      id: 6,
      name: 'Antonio',
      image:
          'https://www.realmadrid.com/img/vertical_380px/blanco_550x650_20200907065036.jpg',
      number: 58,
      rate: 6.6,
    ),
    PlayersModels(
      id: 7,
      name: 'Modric',
      image:
          'https://cdnuploads.aa.com.tr/uploads/Contents/2023/04/28/thumbs_b_c_3f96b4e9dce7148b29d50fa5755ee54b.jpg?v=170707',
      number: 31,
      rate: 5.6,
    ),
    PlayersModels(
      id: 8,
      name: 'Solaiman AlDokhail',
      image:
          'data:image/jpeg;base64,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',
      number: 7,
      rate: 1.0,
    ),
    PlayersModels(
      id: 9,
      name: 'Amis',
      image:
          'https://www.realmadrid.com/img/vertical_380px/aramis-garcia_550x650_20190731023647.jpg',
      number: 3,
      rate: 2.2,
    ),
    PlayersModels(
      id: 10,
      name: 'Jesús',
      image:
          'https://www.realmadrid.com/img/vertical_380px/jesus-martin-mmjm9263_550x650_20191001045220.jpg',
      number: 11,
      rate: 4.5,
    ),
  ];
}
