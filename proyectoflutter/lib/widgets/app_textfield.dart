import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  //Crear paramtetro
  final String inputText;
  final ValueChanged<String> onChanged;
  //final bool obscureText = false;
  final bool obscureText;
  //Llamada al constructor
  const AppTextField(
      {required this.inputText,
      required this.onChanged,
      required this.obscureText});

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextField(
      // keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: inputText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24))),
          //Agregar un color al borde te los textfield
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide(color: Colors.pink, width: 4)),
          //Cambiar el color al borde cuando se haga clic en alguno
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide(color: Colors.pinkAccent, width: 6))),
      onChanged: onChanged,
      //Alinear texto al centro
      textAlign: TextAlign.center,
      //Obscurecer el texto en caso de que sea un password
      obscureText: obscureText,
    );
  }
}
