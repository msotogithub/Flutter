import 'package:flutter/material.dart';

class VistaPrincipalDinamica extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new VistaPrincipalDinamicaState();
  }

}
class VistaPrincipalDinamicaState extends State<VistaPrincipalDinamica>{
 // Declaramos una variable para uno de los textos
  String sLineaBienvenido = "";

  //Definimos el constructor (initState) donde se puede inicializar
  // la variable de texto
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sLineaBienvenido="Bienvenidos";
  }
void botonClick(){
  setState(() {
    if(sLineaBienvenido == "Bienvenidos"){
      sLineaBienvenido = "Adios";
    }
    else {
      sLineaBienvenido = "Bienvenidos";
    }
  });
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Curso Flutter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Saludos desde el curso de Flutter"),
            Text(sLineaBienvenido),
            ElevatedButton(onPressed: (){
              botonClick();
            }, child: Text("Púlsame"))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }

}