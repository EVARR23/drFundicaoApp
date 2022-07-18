import 'package:drfundicaoapp/bottomNavigationBar.dart';
import 'package:drfundicaoapp/ferramentaappBar.dart';
import 'package:drfundicaoapp/ferramentdrawer.dart';
// import 'package:drfundicaoapp/ferramentbody.dart';

import 'package:drfundicaoapp/floatAction.dart';
import 'package:drfundicaoapp/persistentFooterButtons.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
            appBar: appBar(),
            body: eva(),
            drawer: drawer(context),
            floatingActionButton: floatAction(),
            bottomNavigationBar: bottomNavigationBar(),
            persistentFooterButtons: persistentFooterButtons()));
  }

  eva() {
    final scrollController = ScrollController();
    ScrollToId scrollToId = ScrollToId(scrollController: scrollController);
    return InteractiveScrollViewer(
      scrollToId: scrollToId,
      children: <ScrollContent>[
        ScrollContent(
            id: 'a',
            child: Container(
              color: Colors.red,
              width: 300,
              height: 200,
            )),
        ScrollContent(
            id: 'b',
            child: Container(
              color: Colors.green,
              width: 300,
              height: 200,
            )),
      ],
    );
  }
}
