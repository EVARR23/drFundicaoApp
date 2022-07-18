import 'package:drfundicaoapp/bottomNavigationBar.dart';
import 'package:drfundicaoapp/ferramentaappBar.dart';
import 'package:drfundicaoapp/ferramentdrawer.dart';
import 'package:drfundicaoapp/ferramentbody.dart';
import 'package:drfundicaoapp/floatAction.dart';
import 'package:drfundicaoapp/persistentFooterButtons.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
            appBar: appBar(),
            body: body(),
            drawer: drawer(context),
            floatingActionButton: floatAction(),
            bottomNavigationBar: bottomNavigationBar(),
            persistentFooterButtons: persistentFooterButtons()));
  }
}
