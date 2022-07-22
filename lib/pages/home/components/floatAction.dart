// ignore: file_names
import 'package:drfundicaoapp/pages/home/components/drawer.dart';
import 'package:flutter/material.dart';

floatAction(BuildContext context) {
  return FloatingActionButton(
      child: const Icon(Icons.add),
      backgroundColor: Colors.orange,    
      onPressed: () {
        Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  SecondRoute()),
              );
        }
      );
}
