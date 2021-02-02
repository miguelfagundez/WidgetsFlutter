import 'package:flutter/material.dart';

class CheckPage extends StatefulWidget {
  @override
  _CheckPageState createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {

  bool _blockButtonCheckbox = true;
  bool _blockButtonSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 60.0),
            child: Column(
              children: <Widget>[
                _createButton(),
                _createCheckbox(),
                _createSwitch(),
              ],
            ),
          ),
        )
    );
  }

  Widget _createCheckbox() {
    final checkbox = CheckboxListTile(
      title: Text('Block button (Checkbox):'),
        value: _blockButtonCheckbox,
        onChanged: (value){
          setState(() {
            _blockButtonCheckbox = value;
          });
        }
        );
    return checkbox;
  }

  Widget _createButton() {
    final btn = TextButton(
      child: Text((_blockButtonCheckbox || _blockButtonSwitch) ? 'Button is blocked' : 'Button is not blocked'),
      onPressed: (_blockButtonCheckbox || _blockButtonSwitch) ? null : (){},
    );

    return btn;
  }

  Widget _createSwitch() {
    final switchListTile = SwitchListTile(
        title: Text('Block button (Switch):'),
        value: _blockButtonSwitch,
        onChanged: (value){
          setState(() {
            _blockButtonSwitch = value;
          });
        }
    );
    return switchListTile;
  }
}
