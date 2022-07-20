import 'package:drfundicaoapp/teladecadastro.dart';
import 'package:flutter/material.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                //border
                radius: 110,
                backgroundColor: Colors.brown,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280.jpg'),
                ),
              ),
            ),
          ),
        ),
        ListTile(
          title: const Text('Login'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Cadastro'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondRoute().build(context)),
            );
          },
        ),
        ListTile(
          title: const Text('Item 3'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Item 4'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}

class SecondRoute extends StatelessWidget {
  //const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
