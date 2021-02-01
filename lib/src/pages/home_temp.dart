import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget{

  final elements = ["Superman", "Batman", "Robin", "Aquaman", "Thor", "Iroman", "Flash",
    "Wolverine", "Captain America", "Hulk", "Dr Strange", "Gambito", "Magneto", "Spider-Man",
    "Ant-Man", "Cyclops", "Storm"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
      ),
      body: ListView(
        children: _createListSuperHeroes()
      ),
    );
  }

  List<Widget> _createListSuperHeroes(){

    List<Widget> list = new List<Widget>();

    for(String element in elements){
      final widget = ListTile(
        title: Text( element ),
        subtitle: Text('SuperHeroe'),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: (){},
      );
      list.add(widget);
      list.add(Divider(thickness: 1.0,));
    }

    return list;
  }
}