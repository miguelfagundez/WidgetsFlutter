import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/utils/constants.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  List<int> _numbers = [1,2,3,4,5,6,7,8,9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {

    final list = ListView.builder(
       itemCount: _numbers.length,
       itemBuilder: (BuildContext context, int index){
          final _image = _numbers[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/id/$_image/500/300'),
            placeholder: AssetImage(Constants.loading_image),
          );
       },
    );

    return list;
  }
}
