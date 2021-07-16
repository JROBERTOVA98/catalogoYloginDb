import 'package:flutter/material.dart';
import 'package:proyectoflutter/screens/login_screen.dart';
import 'package:proyectoflutter/widgets/app_button.dart';
import 'package:proyectoflutter/widgets/app_icon.dart';
import 'package:proyectoflutter/widgets/app_textfield.dart';
import 'package:proyectoflutter/widgets/navigator.dart';

class RegistrationScreen extends StatefulWidget {
  //Definir la ruta
  static String id = 'registro';
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //Variables internas para el correo y pssword
  late String _email;
  late String _password;

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
            //Llamada al icono principal
            AppIcon(),
            //Dar espacio entre widgets
            SizedBox(
              height: 50,
            ),
            //Llamado a los campos de texto
            AppTextField(
              inputText: "Correo electrónico",
              onChanged: (value) {
                _email = value;
                print('Correo: $_email');
              },
              obscureText: false,
            ),
            //Dar espacio entre widgets
            SizedBox(
              height: 10,
            ),
            AppTextField(
                inputText: "Contraseña",
                onChanged: (value) {
                  _password = value;
                  print('Password: $_password');
                },
                obscureText: true),
            //Dar espacio entre widgets
            SizedBox(
              height: 25,
            ),
            //Llamado al btn
            AppButton(
                color: Colors.pinkAccent,
                name: "Registrarse",
                onPressed: () {
                setState(() {
                    Navigator.pushNamed(context, LoginScreen.id);
                  });
                })
          ],
        ),
      ),
    );
  }
}
