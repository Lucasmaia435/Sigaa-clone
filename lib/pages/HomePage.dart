import 'package:flutter/material.dart';
import 'package:sigaa_clone/pages/Drawer.dart';
import 'package:sigaa_clone/pages/Materias.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      drawer: DrawerItens(),
      appBar: AppBar(
        title:Text("Minhas turmas"), 
        backgroundColor: Colors.blueGrey[400],
      ),
      body: Column(
        children: <Widget>[
          Container(
            child:
            Divider(
                color: Colors.cyan[200],
                height: 8,
                thickness: 8,
            ),
          ),
          Subjects(),
        ],
      )
    );
  }
}