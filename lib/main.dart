import 'package:flutter/material.dart';
import 'add_floor.dart';
import 'add_building.dart';
import 'add_rest_room.dart';
import 'add_conference_room.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=> AddConference(),
      },
    );
  }
}
