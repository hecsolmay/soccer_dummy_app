import 'package:flutter/material.dart';

import '../widgets/big_card.dart';

class Matches extends StatelessWidget {
  const Matches({super.key});

  @override
  Widget build(BuildContext context) {
    List<SoccerMatch> matches = [
      SoccerMatch(
          "https://cdn.pixabay.com/photo/2018/03/17/03/42/alien-3233076_960_720.jpg",
          "24/01/2023",
          "Equipo 1",
          "Equipo 2",
          "Jugado"),
      SoccerMatch(
          "https://cdn.pixabay.com/photo/2017/07/25/22/54/lego-2539844_960_720.jpg",
          "24/01/2023",
          "Equipo 1",
          "Equipo 2",
          "Jugado"),
      SoccerMatch(
          "https://cdn.pixabay.com/photo/2016/04/21/16/23/stormtrooper-1343772_960_720.jpg",
          "24/01/2023",
          "Equipo 1",
          "Equipo 2",
          "Jugado"),
      SoccerMatch(
          "https://cdn.pixabay.com/photo/2016/04/21/16/38/stormtrooper-1343877_960_720.jpg",
          "24/01/2023",
          "Equipo 1",
          "Equipo 2",
          "Jugado"),
      SoccerMatch(
          "https://cdn.pixabay.com/photo/2016/08/29/01/56/millenium-falcon-1627322_960_720.jpg",
          "24/01/2023",
          "Equipo 1",
          "Equipo 2",
          "Jugado"),
      SoccerMatch(
          "https://cdn.pixabay.com/photo/2015/12/13/12/58/yoda-1091030_960_720.jpg",
          "24/01/2023",
          "Equipo 1",
          "Equipo 2",
          "Jugado"),
      SoccerMatch(
          "https://cdn.pixabay.com/photo/2017/05/13/17/59/lego-2310286_960_720.jpg",
          "24/01/2023",
          "Equipo 1",
          "Equipo 2",
          "Jugado"),
      SoccerMatch(
          "https://cdn.pixabay.com/photo/2017/03/25/06/57/star-wars-2172948_960_720.jpg",
          "24/01/2023",
          "Equipo 1",
          "Equipo 2",
          "Jugado"),
      SoccerMatch(
          "https://cdn.pixabay.com/photo/2020/09/13/07/19/children-5567506_960_720.jpg",
          "24/01/2023",
          "Equipo 1",
          "Equipo 2",
          "Jugado"),
      SoccerMatch(
          "https://cdn.pixabay.com/photo/2015/09/04/18/55/yoda-922520_960_720.png",
          "24/01/2023",
          "Equipo 1",
          "Equipo 2",
          "Jugado"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Matches')),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            ...matches
                .map(
                  (matches) => BigCard(match: matches),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}

class SoccerMatch {
  String imgUrl;
  String localTeam;
  String visitTeam;
  String status;
  String dateMatch;

  SoccerMatch(
      this.imgUrl, this.dateMatch, this.localTeam, this.visitTeam, this.status);
}
