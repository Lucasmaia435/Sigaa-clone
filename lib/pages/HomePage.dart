import 'package:flutter/material.dart';
import 'package:sigaa_clone/aluno_info.dart';
import 'package:sigaa_clone/pages/Config.dart';
import 'package:sigaa_clone/pages/Materias.dart';
import 'package:sigaa_clone/pages/Notas.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

String appTitle = "Minhas turmas";
Widget appWidget = Subjects();

class _HomePageState extends State<HomePage> {
  void changeWidget(String title, Widget widget) {
    setState(() {
      appTitle = title;
      appWidget = widget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text("$appTitle"),
        backgroundColor: Colors.blueGrey[400],
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Divider(
              color: Colors.cyan[200],
              height: 8,
              thickness: 8,
            ),
          ),
          appWidget,
        ],
      ),
      drawer: Drawer(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: (22 / 100) * MediaQuery.of(context).size.height + 13,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      10, MediaQuery.of(context).padding.top + 5, 0, 0),
                  color: Colors.blueGrey[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: CircleAvatar(
                          backgroundImage: alunoImage,
                          minRadius: 15,
                          maxRadius: 35,
                        ),
                      ),
                      ListTile(
                        title: Text("${user['Nome']}"),
                        subtitle: Text("${user['Matricula']}"),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.cyan[200],
                height: 1,
                thickness: 5,
              ),
              SizedBox(
                  height: (78 / 100) * MediaQuery.of(context).size.height - 14,
                  child: Container(
                      color: Colors.blueGrey[500],
                      //height: 3.3*MediaQuery.of(context).size.height/4.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                appTitle = "Minhas turmas";
                                appWidget = Subjects();
                              });
                            },
                            child: ListTile(
                              title: Text(
                                "Minhas turmas",
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(Icons.people, color: Colors.white),
                            ),
                          ),
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                appTitle = "Turmas anteriores";
                                appWidget = Config();
                              });
                            },
                            child: ListTile(
                              title: Text(
                                "Turmas anteriores",
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(Icons.people, color: Colors.white),
                            ),
                          ),
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                appTitle = "Minhas Notas";
                                appWidget = Grades();
                              });
                            },
                            child: ListTile(
                              title: Text(
                                "Minhas notas",
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(
                                Icons.filter_9_plus,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                appTitle = "Horários";
                                appWidget = Config();
                              });
                            },
                            child: ListTile(
                              title: Text(
                                "Horários",
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(
                                Icons.event_note,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                appTitle = "Documentos";
                                appWidget = Config();
                              });
                            },
                            child: ListTile(
                              title: Text(
                                "Documentos",
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(
                                Icons.insert_drive_file,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                appTitle = "Bolsas";
                                appWidget = Config();
                              });
                            },
                            child: ListTile(
                              title: Text(
                                "Bolsas",
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(
                                Icons.work,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                appTitle = "Opções";
                                appWidget = Config();
                              });
                            },
                            child: ListTile(
                              title: Text(
                                "Opções",
                                style: TextStyle(color: Colors.white),
                              ),
                              leading:
                                  Icon(Icons.settings, color: Colors.white),
                            ),
                          ),
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                appTitle = "Opções";
                                appWidget = Config();
                              });
                            },
                            child: ListTile(
                              title: Text(
                                "Sair",
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(
                                Icons.subdirectory_arrow_right,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )))
            ]),
      ),
    );
  }
}
