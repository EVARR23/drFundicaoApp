import 'package:drfundicaoapp/ferramentaappBar.dart';
import 'package:drfundicaoapp/ferramentbody.dart';
import 'package:drfundicaoapp/ferramentdrawer.dart';
import 'package:drfundicaoapp/floatAction.dart';
import 'package:drfundicaoapp/persistentFooterButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
            appBar: appBar(),
            body: body3(),
            drawer: drawer(context),
            floatingActionButton: floatAction(),
            persistentFooterButtons: persistentFooterButtons()));
  }
}

body2() {
  final _htmlContent = """
  <div>
    <h1>This is a title</h1>
    <p>This is a <strong>paragraph</strong>.</p>
    <p>I like <i>dogs</i></p>
    <p>Red text</p>
    <ul>
        <li>List item 1</li>
        <li>List item 2</li>
        <li>List item 3</li>
    </ul>
    <img src='https://www.kindacode.com/wp-content/uploads/2020/11/my-dog.jpg' />
  </div>
  """;
  return Html(
    data: _htmlContent,
    // Styling with CSS (not real CSS)
    style: {
      'h1': Style(color: Colors.red),
      'p': Style(color: Colors.black87, fontSize: FontSize.medium),
      'ul': Style(margin: const EdgeInsets.symmetric(vertical: 20))
    },
  );
}
