import 'package:flutter/material.dart';
import 'package:sigaa_clone/pages/HomePage.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blueGrey[300],
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

