import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
          centerTitle: true,
          backgroundColor: Colors.orange,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: () {})
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
            // children:
            //   <Widget>[
            //   buidTextFormFieldCadastro(),
            //   buidTextFormFieldEmpresa(),
            //   buildTextFormFielemail(),
            //   buidTextFormFieldconfirmacaodoemail(),
            //   buidTextFormFieldQuestoesoucomentario(),
            // ],
            ));
  }

  // buidTextFormFieldCadastro() {
  //   return TextFormField(
  //     decoration: InputDecoration(
  //         labelText: "Nome",
  //         labelStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
  //   );
  // }

  // buidTextFormFieldEmpresa() {
  //   return TextFormField(
  //     decoration: InputDecoration(
  //         labelText: "Empresa",
  //         labelStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
  //   );
  // }

  // buildTextFormFielemail() {
  //   return TextFormField(
  //     decoration: InputDecoration(
  //         labelText: "E-mail",
  //         labelStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
  //   );
  // }

  // buidTextFormFieldconfirmacaodoemail() {
  //   return TextFormField(
  //     decoration: InputDecoration(
  //         labelText: "Confirmação do e-mail",
  //         labelStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
  //   );
  // }

  // buidTextFormFieldQuestoesoucomentario() {
  //   return TextFormField(
  //     decoration: InputDecoration(
  //         labelText: "Questões ou comentarios",
  //         labelStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
  //   );
  // }
}
