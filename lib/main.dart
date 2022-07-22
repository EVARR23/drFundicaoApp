import 'package:drfundicaoapp/carousel_slider.dart';
import 'package:drfundicaoapp/pages/home/components/appBar.dart';
import 'package:drfundicaoapp/pages/home/components/drawer.dart';
import 'package:drfundicaoapp/pages/home/components/floatAction.dart';
import 'package:drfundicaoapp/pages/home/homePage.dart';
import 'package:drfundicaoapp/persistentFooterButtons.dart';
import 'package:drfundicaoapp/usuarioadicionarimagem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),      
      home: HomePage());
  }
}
