import 'package:flutter/material.dart';
import 'package:proyectoflutter/routes/rutas.dart';
import 'package:proyectoflutter/widgets/navigator.dart';
import 'package:proyectoflutter/screens/login_screen.dart';
import 'package:proyectoflutter/screens/registration_screen.dart';
import 'package:proyectoflutter/screens/welcome_screen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      theme: ThemeData(
        textTheme: TextTheme(
            // ignore: deprecated_member_use
            body1: TextStyle(color: Colors.pink[600])),
      ),
      //Establecer cual es nuestra pagina principal
      initialRoute: WelcomeScreen.id,
      //Uso de rutas
      routes: customRoutes,
        
      )
      );
}
