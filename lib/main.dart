import 'package:flutter/material.dart';
import 'package:soccer_dummy_app/screens/matches.screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soccer',
      home: Matches(),
    );
  }
}
