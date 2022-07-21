import 'package:drfundicaoapp/ferramentaappBar.dart';
import 'package:drfundicaoapp/ferramentbody.dart';
import 'package:drfundicaoapp/ferramentdrawer.dart';
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
            body: body1(),
            drawer: drawer(context),
            floatingActionButton: floatAction(context),
            persistentFooterButtons: persistentFooterButtons()));
  }

  body1() {
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
                      TreeNode(content: Text("Saliências metálicas espessas ou finas, em forma de lâminas, em forma de veias, rebarbas"), 
                      children: [
                        TreeNode(content: Text("A111-Rebarba")),
                        TreeNode(content: Text("A112-Veiamento")),
                        TreeNode(content: Text("A113-Rebarbas devido ao molde trincado ")),
                        TreeNode(content: Text("A114-Escamas de ângulo ")),
                        TreeNode(content: Text("A115-Veiamento de ângulo ")),
                        TreeNode(content: Text("A123-Molde trincado "))
                    ]),
                    TreeNode(content: Text("Sobre espessuras ou diminuição de espessura, situadas internamente,  externamente ou próxima aos canais de ataque, aparência rugosa"), 
                        children: [
                          TreeNode(content: Text("A211-Inchamento")),
                          TreeNode(content: Text("A212-Erosão ou Lavagem")),
                          TreeNode(content: Text("A213-Atrito"))
                     ]), 
                    TreeNode(content: Text("Saliência espessa, ressalto maciço, com superfície rugosa, aspecto de molde ou macho quebrado"),
                        children:[
                            TreeNode(content: Text("A221-Molde quebrado")),
                            TreeNode(content: Text("A222-Levantamento de macho ou de bolo trincado ")),
                            TreeNode(content: Text(" A223-Deslocamento ou flutuação de areia ")),
                            TreeNode(content: Text("A224-Esmagamento de arestas, quebra de cantos ")),
                            TreeNode(content: Text("A225-Dilatação e quebra de ângulo ")),
                            TreeNode(content: Text("A226-Macho quebrado "))
                        ])
                  ],
                ),
                TreeNode(
                  content: Text("B 100 - Cavidades/Vazios"),
                  children: [
                  ],
                ),
                TreeNode(
                  content: Text("C 100 - Descontinuidades do Material"),
                  children: [
                  ],
                ),
                TreeNode(
                  content: Text("D 100 - Defeitos Superficiais"),
                  children: [
                  ],
                ),
                TreeNode(
                  content: Text("E 100 - Peça Incompleta"),
                  children: [
                  ],
                ),
                TreeNode(
                  content: Text("F 100 - Dimensões ou Formas Incorretas"),
                  children: [

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
