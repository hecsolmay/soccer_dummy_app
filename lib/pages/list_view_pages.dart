import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soccer_dummy_app/core/entities/tournament.dart';
import 'package:soccer_dummy_app/data/repositories/tournamentRepository.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var tournaments = TournamentRepository.getTournament();

    return SafeArea(
      child: Scaffold(
        body: ListView.separated(
          itemCount: tournaments.length,
          itemBuilder: (BuildContext context, int index) => createListTileItem(
            context,
            tournaments[index],
          ),
          separatorBuilder: (context, index) => const Divider(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }

  createListTileItem(BuildContext context, Tournament tournament) => ListTile(
        leading: const Icon(Icons.catching_pokemon),
        title: Text(tournament.name),
        subtitle: Text('Match Day ${tournament.matchDate}'),
        trailing: createTrailingItem(tournament),
        // onTap: () => displayDialogAndroid(context, tournament),
        onTap: () => Platform.isAndroid
            ? displayDialogAndroid(context, tournament)
            : displayDialogIos(context, tournament),
      );

  FadeInImage createTrailingItem(Tournament tournament) {
    return FadeInImage.assetNetwork(
      placeholder: 'images/loading.gif',
      image: tournament.urlProfile,
      fit: BoxFit.cover,
      width: 100,
      height: double.infinity,
    );
  }

  displayDialogAndroid(BuildContext context, Tournament tournament) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.purple,
      builder: (context) => AlertDialog(
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
        ),
        title: const Text('Tournament'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(tournament.name),
            const SizedBox(
              height: 10,
            ),
            FadeInImage.assetNetwork(
              placeholder: 'images/loading.gif',
              image: tournament.urlProfile,
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }

  displayDialogIos(BuildContext context, Tournament tournament) =>
      showCupertinoDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Tournament'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(tournament.name),
              const SizedBox(
                height: 10,
              ),
              FadeInImage.assetNetwork(
                placeholder: 'images/loading.gif',
                image: tournament.urlProfile,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            ),
          ],
        ),
      );
}
