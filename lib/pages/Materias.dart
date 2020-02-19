import 'package:flutter/material.dart';
import 'package:sigaa_clone/aluno_info.dart';

class Subjects extends StatefulWidget {
  @override
  _SubjectsState createState() => _SubjectsState();
}

final turmas = user['Turmas'];

class _SubjectsState extends State<Subjects> {
  List<Widget> list = new List();

  void listTurmas() {
    for (var turma in turmas) {
      var turmaWidget = new Card(
        margin: EdgeInsets.fromLTRB(10,5,10,5),
        elevation: 0,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  'Horário: ${turma['Horario']}',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                    fontSize: 16
                  ),
                ),
                margin: EdgeInsets.all(10),
              ),
              Container(
                child: Text(
                  '${turma['Nome']}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
                margin: EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
              ),
              Container(
                child: Text(
                  'Local: ${turma['Local']}',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                    fontSize: 16
                  ),
                ),
                margin: EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      );
      list.add(turmaWidget);
    }
  }

  @override
  Widget build(BuildContext context) {
    listTurmas();
    return ListView(
      addAutomaticKeepAlives: true,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: list,
    );
  }
}
