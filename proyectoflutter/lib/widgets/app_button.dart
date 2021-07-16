import 'package:flutter/material.dart';

//Aqui vamos a poner los botones que vamos a reutilizar a lo largo de
//la app
class AppButton extends StatelessWidget {
  //Variables del constructor
  final MaterialAccentColor color;
  final String name;
  final VoidCallback onPressed;
  //Crear construccion
  const AppButton({required this.color, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(20),
        elevation: 15.0,
        child: SizedBox(
          // ignore: deprecated_member_use
          child: FlatButton(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: onPressed,
          ), // ignore: deprecated_member_use
        ),
      ),
    );
  }
}
