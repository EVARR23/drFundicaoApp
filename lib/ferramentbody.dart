import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';

TreeView body() {
  return TreeView(nodes: [
    TreeNode(
      content: Text("A 100 - Excrescências/Saliências Metálicas"),
      children: [TreeNode(content: Text("1")), TreeNode(content: Text("2"))],
    ),
    TreeNode(
      content: Text("B 100 - Cavidades/Vazios"),
      children: [TreeNode(content: Text("1")), TreeNode(content: Text("2"))],
    ),
    TreeNode(
      content: Text("C 100 - Descontinuidades do Material"),
      children: [TreeNode(content: Text("1")), TreeNode(content: Text("2"))],
    ),
    TreeNode(
      content: Text("D 100 - Defeitos Superficiais"),
      children: [TreeNode(content: Text("1")), TreeNode(content: Text("2"))],
    ),
    TreeNode(
      content: Text("E 100 - Peça Incompleta"),
      children: [TreeNode(content: Text("1")), TreeNode(content: Text("2"))],
    ),
    TreeNode(
      content: Text("F 100 - Dimensões ou Formas Incorretas"),
      children: [TreeNode(content: Text("1")), TreeNode(content: Text("2"))],
    ),
    TreeNode(
      content: Text("G 100 - Inclusões ou Anomalias na Estrutura"),
      children: [TreeNode(content: Text("1")), TreeNode(content: Text("2"))],
    )
  ]);
}
