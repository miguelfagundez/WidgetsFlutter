import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert'),
            onPressed: () => _showAlertMsg(context)
            ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlertMsg(BuildContext context){
    showDialog(
      context:  context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          title: Text('Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('This is a content example'),
              SizedBox( height: 20.0, ),
              FlutterLogo( size: 50.0, ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: (){},
            ),
          ],
        );
      },
    );
  }
}
