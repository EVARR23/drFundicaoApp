import 'package:drfundicaoapp/usuarioadicionarimagem.dart';
import 'package:flutter/material.dart';

floatAction(BuildContext context) {
  return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SegundaRota()));
      },
      child: Text("Botão"));
}
