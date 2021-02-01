import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider{
  List<dynamic> options = [];
  Map dataMap;
  
  _MenuProvider(){
    createData();
  }

  Future<List<dynamic>> createData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    dataMap = json.decode(response);
    var options = dataMap['rutas'];
    return options;
  }
}

final menuProvider = new _MenuProvider();