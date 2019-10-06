import 'package:flutter/material.dart';
import 'package:tales_of_china/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TalesOfChina",
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightBlue,
          accentColor: Colors.pinkAccent,
          fontFamily: 'Montserrat',
          textTheme: TextTheme(
            title: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w300, color: Colors.white),
          )),
      initialRoute: "/",
      routes: {"/": (context) => Home()},
      debugShowCheckedModeBanner: false,
    );
  }
}
