import 'package:drfundicaoapp/bottomNavigationBar.dart';
import 'package:drfundicaoapp/ferramentaappBar.dart';
import 'package:drfundicaoapp/ferramentdrawer.dart';
// import 'package:drfundicaoapp/ferramentbody.dart';

import 'package:drfundicaoapp/floatAction.dart';
import 'package:drfundicaoapp/persistentFooterButtons.dart';
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
              child: TreeView(nodes: [
                TreeNode(
                  content: Text("A 100 - Excrescências/Saliências Metálicas"),
                  children: [
                    TreeNode(content: Text("1")),
                    TreeNode(content: Text("2"))
                  ],
                ),
                TreeNode(
                  content: Text("B 100 - Cavidades/Vazios"),
                  children: [
                    TreeNode(content: Text("1")),
                    TreeNode(content: Text("2"))
                  ],
                ),
                TreeNode(
                  content: Text("C 100 - Descontinuidades do Material"),
                  children: [
                    TreeNode(content: Text("1")),
                    TreeNode(content: Text("2"))
                  ],
                ),
                TreeNode(
                  content: Text("D 100 - Defeitos Superficiais"),
                  children: [
                    TreeNode(content: Text("1")),
                    TreeNode(content: Text("2"))
                  ],
                ),
                TreeNode(
                  content: Text("E 100 - Peça Incompleta"),
                  children: [
                    TreeNode(content: Text("1")),
                    TreeNode(content: Text("2"))
                  ],
                ),
                TreeNode(
                  content: Text("F 100 - Dimensões ou Formas Incorretas"),
                  children: [
                    TreeNode(content: Text("1")),
                    TreeNode(content: Text("2"))
                  ],
                ),
                TreeNode(
                  content: Text("G 100 - Inclusões ou Anomalias na Estrutura"),
                  children: [
                    TreeNode(
                        content: IconButton(
                            iconSize: 50,
                            icon: Icon(Icons.remove_circle),
                            color: Colors.teal,
                            padding: const EdgeInsets.all(0.0),
                            onPressed: () {}))
                  ],
                )
              ]),
            )),
      ],
    );
  }
}
