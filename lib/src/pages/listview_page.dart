import 'package:flutter/material.dart';

import 'dart:async';
import 'package:flutter_widgets/src/utils/constants.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  List<int> _numbers = [];
  int _lastImage = 0;
  ScrollController _controller = new ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    addNewImages();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent){
        //addNewImages();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: Stack(
        children: <Widget>[
          _createList(),
          _createLoading(),
        ],
      )
    );
  }

  Widget _createList() {

    final list = ListView.builder(
      controller: _controller,
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

  void addNewImages(){
    for(int i = 1; i < 10; i++){
      _lastImage++;
      _numbers.add(_lastImage);
    }

    setState(() {});
  }

  Future<Null> fetchData() async {

    _isLoading = true;
    setState(() { });
    final duration = Duration(seconds: 2);
    return await new Timer(duration, response);
  }

  void response() {

    _isLoading = false;

    _controller.animateTo(
      _controller.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250),
    );
    addNewImages();
  }

 Widget _createLoading() {
    if (_isLoading){
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 30.0,),
        ],
      );
    }else{
      return Container();
    }
 }
}
