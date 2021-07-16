import 'package:flutter/material.dart';
//import 'package:flutter-sqflite/database/dbhelper.dart;
//import 'package:flutter_crud/model/employee.dart';
//import 'package:flutter_crud/employeelist.dart';
// ignore: unused_import

import 'database/dbhelper.dart';
import 'employeelist.dart';
import 'model/usuario.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SQFLite DataBase Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Usuario employee = new Usuario("correo", "password");

  String correo;
  String password;

  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.pink[100],
      appBar: new AppBar(
          title: new Text(
            'Registro de Usuario',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.pinkAccent,
          actions: <Widget>[
            new IconButton(
              icon: const Icon(Icons.view_list),
              tooltip: 'Next choice',
              onPressed: () {
                navigateToEmployeeList();
              },
            ),
          ]),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Form(
          key: formKey,
          child: new Column(
            children: [
              new TextFormField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    //Agregar un color al borde te los textfield
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        borderSide: BorderSide(color: Colors.pink, width: 4)),
                    //Cambiar el color al borde cuando se haga clic en alguno
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        borderSide:
                            BorderSide(color: Colors.pinkAccent, width: 6)),
                    labelText: 'Correo'),
                validator: (val) => val.length == 0 ? "Ingrese correo" : null,
                onSaved: (val) => this.correo = val,
              ),
              SizedBox(
                height: 20,
              ),
              new TextFormField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    //Agregar un color al borde te los textfield
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        borderSide: BorderSide(color: Colors.pink, width: 4)),
                    //Cambiar el color al borde cuando se haga clic en alguno
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        borderSide:
                            BorderSide(color: Colors.pinkAccent, width: 6)),
                    labelText: 'Contraseña'),
                validator: (val) =>
                    val.length == 0 ? 'Ingresar contraseña' : null,
                onSaved: (val) => this.password = val,
              ),
              new Container(
                margin: const EdgeInsets.only(top: 10.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.pinkAccent,
                  onPressed: _submit,
                  child: new Text(
                    'Guardar Datos',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (this.formKey.currentState.validate()) {
      formKey.currentState.save();
    } else {
      return null;
    }
    // ignore: unused_local_variable
    var usuario = Usuario(correo, password);
    var dbHelper = DBHelper();

    dbHelper.saveUsu(Usuario(correo, password));
    _showSnackBar("Data saved successfully");
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState
        // ignore: deprecated_member_use
        .showSnackBar(new SnackBar(content: new Text(text)));
  }

  void navigateToEmployeeList() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new MyEmployeeList()),
    );
  }
}
