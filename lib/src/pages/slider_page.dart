import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valueSlider = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 60.0),
          child: Column(
            children: <Widget>[
              _createSliders(),
              Expanded(child: _createImage()),
            ],
          ),
        ),
      )
    );
  }

  Widget _createSliders() {
    final slider = Slider(
      activeColor: Colors.red,
      label: 'Image Size: $_valueSlider',
        divisions: 50,
        value: _valueSlider,
        min: 50.0,
        max: 400.0,
        onChanged: (value){
          print(value);
          setState(() {
            _valueSlider = value;
          });
        });
    return slider;
  }

  Widget _createImage() {
    final image = Image(
      image: NetworkImage('https://www.vhv.rs/dpng/d/115-1159913_transparent-michael-jordan-clipart-png-download-michael-jordan.png'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );

    return image;
  }
}
