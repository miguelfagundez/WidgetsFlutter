import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/providers/menu_provider.dart';
import 'package:flutter_widgets/src/utils/icon_utils.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets App'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {

    //print(menuProvider.options);

    return FutureBuilder(
        future: menuProvider.createData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
          return ListView(
            children: _listNewItems(snapshot.data, context),
          );
        },
    );
    // return ListView(
    //   children: _listNewItems(),
    // );
  }

  List<Widget> _listNewItems(List<dynamic> data, BuildContext context) {
    final List<Widget> list = [];

    data.forEach((element) {
      final widgetTmp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: (){

          Navigator.pushNamed(context, element['ruta']);
          // final route = MaterialPageRoute(
          //     builder: (context){
          //       return AlertPage();
          //     }
          // );
          // Navigator.push(context, route);
        },
      );
      list.add(widgetTmp);
      list.add(Divider());
    });

    return list;
  }
}