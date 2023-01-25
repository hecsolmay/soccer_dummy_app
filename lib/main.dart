import 'package:flutter/material.dart';
import 'package:soccer_dummy_app/pages/list_view_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soccer',
      home: ListViewPage(),
    );
  }
}
