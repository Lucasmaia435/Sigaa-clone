import 'package:flutter/material.dart';
import 'package:sigaa_clone/aluno_info.dart';

class Grades extends StatefulWidget {
  @override
  _GradesState createState() => _GradesState();
}

final periodos = user['Periodos'];
final periodo = {
  'periodo': periodos[0]['Periodo'],
  'turmas': periodos[0]['Turmas']
};

class _GradesState extends State<Grades> {
  final turmas = periodo['turmas'];
  List<Widget> list = new List();
  void listNotas() {
    for (var turma in turmas) {
      var n1 = turma['Notas'][0];
      var n2 = turma['Notas'][1];
      var n3 = turma['Notas'][2];
      var n4 = turma['Notas'][3];
      var f = turma['Faltas'];
      var sit = turma['Situacao'];

      var turmaWidget = new Card(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        elevation: 0,
        child: InkWell(
          onTap: () {
            print('${turma['Nome']}');
          },
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '${turma['Nome']}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(5, 2.5, 10, 10),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '1',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '2',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Rec',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Res',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'F',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Sit',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey[700]
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '$n1',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '$n2',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '$n3',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '$n4',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '${((n1+n2+n3)/3).toStringAsFixed(2)}',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '$f',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '$sit',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      list.add(turmaWidget);
    }
  }

  @override
  Widget build(BuildContext context) {
    listNotas();
    return ListView(
      addAutomaticKeepAlives: true,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: list,
    );
  }
}
