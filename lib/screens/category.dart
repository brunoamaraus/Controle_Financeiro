import 'package:controle_financeiro/widgets/drawer.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: new AppBar(
        title: new Text("Lista de Categorias"),
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