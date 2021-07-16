import 'package:flutter/material.dart';
import 'package:proyectoflutter/screens/login_screen.dart';
import 'package:proyectoflutter/screens/registration_screen.dart';
import 'package:proyectoflutter/widgets/app_button.dart';
import 'package:proyectoflutter/widgets/app_icon.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcomeScreen';//Para que podamos usar la ruta en la pagina principal
  //Al ser la pagina principal la constante no lleva valor
  WelcomeScreen({Key? key}) : super(key: key);

  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        //Alineadores de contenido
        mainAxisAlignment: MainAxisAlignment.center, //Alinearlo al centro
        crossAxisAlignment:
            CrossAxisAlignment.stretch, //Ocupar todo el ancho del dispositivo
        children: <Widget>[
          //Llamada a la clase AppIcon
          AppIcon(),
          SizedBox(
            height: 48,
          ),
          //Distancia entre el texto y los botones

          //Implementacion de botones
          AppButton(
              //Llamado al btn inicial
              color: Colors.pinkAccent,
              name: "Iniciar",
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              }),

          AppButton(
              //Llamado al btn Registrarse
              color: Colors.pinkAccent,
              name: "Registrarse",
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              }),
        ],
      ),
    ));
  }
}
