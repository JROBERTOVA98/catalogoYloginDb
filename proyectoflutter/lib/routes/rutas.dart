import 'package:flutter/material.dart';
import 'package:proyectoflutter/screens/esponjas.dart';
import 'package:proyectoflutter/screens/labios.dart';
import 'package:proyectoflutter/screens/ojos.dart';
import 'package:proyectoflutter/screens/rostro.dart';
import 'package:proyectoflutter/screens/login_screen.dart';
import 'package:proyectoflutter/screens/manos.dart';
import 'package:proyectoflutter/screens/registration_screen.dart';
import 'package:proyectoflutter/screens/brochas.dart';
import 'package:proyectoflutter/screens/welcome_screen.dart';
import 'package:proyectoflutter/widgets/navigator.dart';
import 'package:proyectoflutter/widgets/tabs.dart';

var customRoutes = <String, WidgetBuilder>{
  WelcomeScreen.id: (context) => WelcomeScreen(),
  LoginScreen.id: (context) => LoginScreen(),
  RegistrationScreen.id: (context) => RegistrationScreen(),
  Labios.id: (_) => Labios(),
  Ojos.id: (_) => Ojos(),
  MyTabs.id: (_) => MyTabs(),
  MyUpTabs.id: (context) => MyUpTabs(),
  Esponjas.id: (_) => Esponjas(),
  Brochas.id: (_) => Brochas(),
  Rostro.id: (_) => Rostro(),
  Manos.id: (_) => Manos()
};
