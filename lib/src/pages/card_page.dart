import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _createCard(),
          SizedBox(
            height: 30.0,
          ),
          _createCard2(),
          SizedBox(
            height: 30.0,
          ),
          _createCard(),
          SizedBox(
            height: 30.0,
          ),
          _createCard2(),
          SizedBox(
            height: 30.0,
          ),
          _createCard(),
          SizedBox(
            height: 30.0,
          ),
          _createCard2(),
          SizedBox(
            height: 30.0,
          ),
          _createCard(),
          SizedBox(
            height: 30.0,
          ),
          _createCard2(),
          SizedBox(
            height: 30.0,
          ),
          _createCard(),
          SizedBox(
            height: 30.0,
          ),
          _createCard2(),
          SizedBox(
            height: 30.0,
          ),
          _createCard(),
          SizedBox(
            height: 30.0,
          ),
          _createCard2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _createCard() {

    return Card(
      elevation: 20.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.blue,),
            title: Text('This is a title'),
            subtitle: Text('This is a subtitle for this card. January 2021.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: (){},
                  child: Text('Ok')),
              FlatButton(
                  onPressed: (){},
                  child: Text('Cancelar')),
            ],
          )
        ],
      ),
    );
  }

  Widget _createCard2() {
    final card = Container(
      // elevation: 10.0,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          // Image(image: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hbx060116masterclass01-1550601705.jpg'),),
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hbx060116masterclass01-1550601705.jpg'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('This is an example'),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
