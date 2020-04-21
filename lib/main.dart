import 'package:appaprendaingles/telas/Home.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData( //Definir o tema padrão do app
      primaryColor: Color(0xff795548), //Padrão de cor exadecimal (poderia ser normal)
      scaffoldBackgroundColor: Color(0xfff5e9b9)  //Por estar usando o Scaffold
    ),
  ));
}
