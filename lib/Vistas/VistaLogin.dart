import 'package:flutter/material.dart';

class VistaLogin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VistaLoginState();
  }
}
class VistaLoginState extends State<VistaLogin>{

  TextEditingController controllerUsuario = TextEditingController();
  TextEditingController controllerPass = TextEditingController();

  void loginClick(){
    if(controllerUsuario.text=="Manu" && controllerPass.text=="1234"){
      //print("Login con éxito");
      //_showMyDialog("Login con éxito");
      Navigator.of(context).pushNamed("/Home");
    }
    else{
      //print("Error de login");
      _showMyDialog("Error de login");
    }
  }

  void loginCancel(){

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                helperText: "Usuario",
                icon: Icon(Icons.account_box_outlined)
              ),
              controller: controllerUsuario,
            ),
            TextField(
              decoration: InputDecoration(
                  helperText: "Contraseña",
                  icon: Icon(Icons.password)
              ),
              controller: controllerPass,
              obscureText: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: loginClick, child: Text("Login")),
                ElevatedButton(onPressed: loginCancel, child: Text("Salir"))
              ],
            )
          ],
          )
      ),
    );
  }
  Future<void> _showMyDialog(String texto) async {
    return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Alerta Login'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(texto),
          ],
        ),
      ),
    actions: <Widget>[
      TextButton(
      child: const Text("Aceptar"),
      onPressed: (){
        Navigator.of(context).pop();
    },)
    ],
      );
    },
    );
  }
}