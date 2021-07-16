import 'package:flutter/material.dart';
import 'package:proyectoflutter/widgets/app_button.dart';
import 'package:proyectoflutter/widgets/app_icon.dart';
import 'package:proyectoflutter/widgets/app_textfield.dart';
import 'package:proyectoflutter/widgets/navigator.dart';

class LoginScreen extends StatefulWidget {
  static String id =
      'login'; //Para que podamos usar la ruta en la pagina principal
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 44),
        child: Column(
          //Alineadores de contenido
          mainAxisAlignment: MainAxisAlignment.center, //Alinearlo al centro
          crossAxisAlignment:
              CrossAxisAlignment.stretch, //Ocupar todo el ancho del dispositivo
          children: <Widget>[
            //Importar el icono principal
            AppIcon(),
            //Dar espacio entre widgets
            SizedBox(
              height: 50,
            ),
            //Agregar el textField
            AppTextField(
              inputText: "Correo electrónico",
              onChanged: (value) {},
              obscureText: false,
            ),
            //Dar espacio entre widgets
            SizedBox(
              height: 10,
            ),
            AppTextField(
                inputText: "Contraseña",
                onChanged: (value) {},
                obscureText: true),
            //Dar espacio entre widgets
            SizedBox(
              height: 25,
            ),
            //Agregar el boton de inicio
            AppButton(
                color: Colors.pinkAccent,
                name: "Iniciar",
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, MyTabs.id);
                  });
                })
          ],
        ),
      ),
    );
  }
}
