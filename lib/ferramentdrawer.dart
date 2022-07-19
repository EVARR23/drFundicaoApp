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
          title: const Text('-Login'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('cadastro'),
          onTap: () {
            Navigator.pop(context);
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
