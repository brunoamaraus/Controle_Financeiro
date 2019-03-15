import 'package:controle_financeiro/screens/entry.dart';
import 'package:controle_financeiro/widgets/drawer.dart';
import 'package:flutter/material.dart';

class ListEntryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: new AppBar(
        title: new Text("Lançamento"),
      ),
      body: new Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Lançamento"),
      ),
      floatingActionButton: new FloatingActionButton(
      onPressed: (){
        Navigator.pop(context);
        Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new EntryView()));
      },
      tooltip: 'Increment',
      child: new Icon(Icons.add),
    ),
    );
  }
}