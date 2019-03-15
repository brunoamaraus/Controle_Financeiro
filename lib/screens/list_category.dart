import 'package:controle_financeiro/screens/category.dart';
import 'package:controle_financeiro/widgets/drawer.dart';
import 'package:flutter/material.dart';

class ListCategoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: new AppBar(
        title: new Text("Categorias"),
      ),
      body: new Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Categorias"),
      ),
      floatingActionButton: new FloatingActionButton(
      onPressed: (){
        Navigator.pop(context);
        Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new CategoryView()));
      },
      tooltip: 'Increment',
      child: new Icon(Icons.add),
    ),
    );
  }
}