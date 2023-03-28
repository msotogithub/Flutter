import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VistaPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return pinta_tradicional();
  }
Widget pinta_tradicional(){
  AppBar appBar = new AppBar(title: Text("Curso Flutter IESLB"),);
  Text text1 = Text("Hola desde el curso de Flutter IESLB");
  Text text2 = Text("Bienvenidos a la programación con Flutter");
  Column column = new Column(children: [text1, text2],);
  Center center = Center(child: column,);
  Scaffold scaffold = new Scaffold(appBar: appBar,body: center,);
  return scaffold;
}
Widget pinta_modo_flutter(){
    return Scaffold(
      appBar: AppBar(
        title: Text("Curso FlutterIESLB"),
      ),
      body: Center(
        child: Column(
          children: [
          Text("Hola desde el curso de Flutter"),
          Text("Bienvenidos")
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    )
    );
}
}