import 'package:controle_financeiro/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new DrawerOnly(),
      appBar: new AppBar(
        title: new Text("Controle Financeiro"),
      ),
      body: new Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Ola"),
      ),
    ); 
  }
}