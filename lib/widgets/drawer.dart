import 'package:controle_financeiro/screens/list_category.dart';
import 'package:controle_financeiro/screens/list_entry.dart';
import 'package:flutter/material.dart';

class DrawerOnly extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              child: new Text("SISTEMA RÚBIA.."),
              decoration: new BoxDecoration(
                  color: Colors.orange
              ),
            ),
            new ListTile(
              title: new Text("Categorias"),
              onTap: () {
                Navigator.pop(ctxt);
                Navigator.pushReplacement(ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new ListCategoryView()));
              },
            ),
            new ListTile(
              title: new Text("Movimentos"),
              onTap: () {
                Navigator.pop(ctxt);
                Navigator.pushReplacement(ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new ListEntryView()));
              },
            ),
          ],
        )
    );
  }
}