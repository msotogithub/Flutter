import 'package:flutter/material.dart';
import 'package:hola_mundo/Vistas/VistaLogin.dart';
import 'package:hola_mundo/Vistas/VistaPrincipal.dart';
import 'package:hola_mundo/Vistas/VistaPrincipalDinamica.dart';

class MiPrimeraApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    VistaPrincipal vistaPrincipal = VistaPrincipal();
    VistaPrincipalDinamica vistaPrincipalDinamica =  VistaPrincipalDinamica();
    VistaLogin vistaLogin = VistaLogin();
    ThemeData themeData =  ThemeData(brightness:Brightness.dark );
    MaterialApp materialApp =  MaterialApp(
      title: "Hola Mundo",
      theme: themeData,
      //home: vistaLogin,
      initialRoute: "/Login",
      routes: {
        '/Login':(context) => vistaLogin,
        '/Home' :(context) => vistaPrincipalDinamica
    });
    return materialApp;
  }

}