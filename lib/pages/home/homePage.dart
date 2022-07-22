import 'package:drfundicaoapp/pages/home/components/body.dart';
import 'package:drfundicaoapp/pages/home/components/drawer.dart';
import 'package:drfundicaoapp/pages/home/components/floatAction.dart';
import 'package:drfundicaoapp/persistentFooterButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';

import 'components/appBar.dart';

class HomePage extends StatelessWidget {
      TreeController treeController = TreeController();
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: appBar(context, treeController),
            body: body(context, treeController),
            drawer: drawer(context),
            floatingActionButton: floatAction(context),
            persistentFooterButtons: persistentFooterButtons(context)          
        );
      }
    }