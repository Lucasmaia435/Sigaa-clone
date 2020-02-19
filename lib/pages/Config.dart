import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: (){},
            child:ListTile(
            title: Text("Vínculos", style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.swap_horiz),
          )),
          Divider(
            height: 1,
            thickness: 1,
          ),
          InkWell(
            onTap: (){},
            child:ListTile(
              title: Text("Sobre", style: TextStyle(fontSize: 18),),
              leading: Icon(Icons.info)
            )
          )
        ],
      ),
    );
  }
}