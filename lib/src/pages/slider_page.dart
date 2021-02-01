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
      image: NetworkImage('https://lh3.googleusercontent.com/proxy/LRaobjUUmpoBj81Cy6W0_9RcVtC11fWF1E9_IjmxrbmSuclZoab4T_vDESYjZ6SyXser6xq0yRlEbBmMRCwej-HsIIr3kHiUryHs91bSVDtatiadvA'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );

    return image;
  }
}
