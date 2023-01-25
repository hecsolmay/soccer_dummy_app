import 'package:flutter/material.dart';

import '../pages/gridview_pages.dart';

class BigCard extends StatelessWidget {
  final SoccerMatch match;
  const BigCard({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var snackBar = SnackBar(content: Text(match.localTeam));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: FadeInImage.assetNetwork(
                height: 150,
                placeholder: 'images/loading.gif',
                image: match.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(match.dateMatch),
                    Text(match.localTeam),
                    const Text('VS'),
                    Text(match.visitTeam),
                    Text(match.status)
                  ]),
            ),
          ],
        )),
      ),
    );
  }
}
