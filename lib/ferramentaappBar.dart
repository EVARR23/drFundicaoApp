import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(title: const Text('DR - Fundicao'), actions: <Widget>[
    // botoes de acções
    IconButton(
      icon: Icon(choices[0].icon),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(choices[1].icon),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(choices[2].icon),
      onPressed: () {},
    ),
    PopupMenuButton<Choice>(
      itemBuilder: (BuildContext context) {
        return choices.skip(2).map((Choice choice) {
          return PopupMenuItem<Choice>(
            value: choice,
            child: Text("choice.title"),
          );
        }).toList();
      },
    )
  ]);
}

class Choice {
  const Choice({this.title, this.icon});
  final String? title;
  final IconData? icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Carro', icon: Icons.directions_car),
  const Choice(title: 'Bicicleta', icon: Icons.directions_bike),
  const Choice(title: 'Barco', icon: Icons.directions_boat),
  const Choice(title: 'Ônibus', icon: Icons.directions_bus),
  const Choice(title: 'Trem', icon: Icons.directions_railway),
  const Choice(title: 'Caminhar', icon: Icons.directions_walk),
];
