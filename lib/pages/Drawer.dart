import 'package:flutter/material.dart';
import 'package:sigaa_clone/pages/HomePage.dart';
import 'package:sigaa_clone/aluno_info.dart';

class DrawerItens extends StatelessWidget {
  const DrawerItens({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: (22/100) * MediaQuery.of(context).size.height + 13,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, MediaQuery.of(context).padding.top+5, 0, 0),
                color: Colors.blueGrey[50],
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15,0,0,0),
                        child: CircleAvatar(
                          backgroundImage: alunoImage,
                          minRadius: 15,
                          maxRadius: 35,
                        ),
                      ),
                      ListTile(
                        title: Text("${user['nome']}"),
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
                height: (78/100) * MediaQuery.of(context).size.height - 14,
                child: 
                Container(
                    color: Colors.blueGrey[500],
                    //height: 3.3*MediaQuery.of(context).size.height/4.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: Text("Minhas turmas", style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.people,color:Colors.white),
                          onLongPress: (){},
                          onTap:(){
                            HomePage();
                          }                             
                        ),
                        ListTile(
                          title: Text("Turmas anteriores", style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.people,color:Colors.white),
                        ),
                        ListTile(
                          title: Text("Minhas notas", style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.filter_9_plus,
                          color: Colors.white,),
                        ),
                        ListTile(
                          title: Text("Horários", style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.event_note,
                          color: Colors.white,),
                        ),
                        ListTile(
                          title: Text("Documentos", style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.insert_drive_file,
                          color: Colors.white,),
                        ),
                        ListTile(
                          title: Text("Bolsas", style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.work,
                          color: Colors.white,),
                        ),
                        ListTile(
                          title: Text("Opções", style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.settings,
                          color: Colors.white),
                        ),
                        ListTile(
                          title: Text("Sair", style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.subdirectory_arrow_right,
                          color: Colors.white,),
                        ),
                        
                      ],
                    )
                )
            )
          ]),
    );
  }
}
