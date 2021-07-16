import 'package:flutter/material.dart';
//Aqui vamos a poner los iconos que vamos a reutilizar a lo largo de
//la app

class AppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'images/logoS.png',
          height: 120,
          width: 120,
          
        ),
        /* Text(
         "Sofi's cosmetics",
          style: TextStyle(
           fontSize: 45.0,
           fontWeight: FontWeight.bold,
         ),
        )  */
      ],
    );
  }
}
