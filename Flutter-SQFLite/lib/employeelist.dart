import 'package:flutter/material.dart';
//import 'package:flutter_crud/model/employee.dart';
import 'dart:async';
//import 'package:flutter_crud/database/dbhelper.dart';
import 'package:new_version/database/dbhelper.dart';

import 'model/usuario.dart';

Future<List<Usuario>> fetchUsuariosFromDatabase() async {
  var dbHelper = DBHelper();
  Future<List<Usuario>> usuarios = dbHelper.getUsuario();
  return usuarios;
}

class MyEmployeeList extends StatefulWidget {
  @override
  MyEmployeeListPageState createState() => new MyEmployeeListPageState();
}

class MyEmployeeListPageState extends State<MyEmployeeList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Usuarios registrados'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(16.0),
        child: new FutureBuilder<List<Usuario>>(
          future: fetchUsuariosFromDatabase(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return new ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(snapshot.data[index].correo,
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0)),
                          new Text(snapshot.data[index].password,
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14.0)),
                          new Divider()
                        ]);
                  });
            } else if (snapshot.hasError) {
              return new Text("${snapshot.error}");
            }
            return new Container(
              alignment: AlignmentDirectional.center,
              child: new CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
