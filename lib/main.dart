import 'package:favours_card/cringe.dart';
import 'package:favours_card/home.dart';
import 'package:favours_card/idunnu.dart';
import 'package:favours_card/manuel.dart';
import 'package:favours_card/memories.dart';
import 'package:favours_card/shit_you_love.dart';
import 'package:favours_card/thanks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/thanks': (context) => Thanks(),
        '/home': (context) => Home(),
        '/shit you love': (context) => ShitYouLove(),
        '/memories' : (context) => Memories(),
        '/cringe' : (context) => Cringe(),
        '/idunnu' : (context) => IdunnuPage(),
        '/manuel' : (context) => Manuel(),
      },
      home: Home(),
    );
  }
}
