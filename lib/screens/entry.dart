import 'package:controle_financeiro/widgets/drawer.dart';
import 'package:flutter/material.dart';

class EntryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: new AppBar(
        title: new Text("Lançamento"),
      ),
      body: new Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          child: ListView(
            padding: EdgeInsets.all(12.0),
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Descrição"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}