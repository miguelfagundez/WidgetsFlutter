import 'package:flutter/material.dart';
import 'file:///C:/Practice/flutter_widgets/lib/src/utils/constants.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              // backgroundImage: NetworkImage('https://www.nba.com/bulls/sites/bulls/files/jordan_vs_indiana.jpg'),
              backgroundImage: NetworkImage('https://avatarfiles.alphacoders.com/817/81783.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('MJ'),
              backgroundColor: Colors.deepOrange,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://www.nba.com/bulls/sites/bulls/files/jordan_vs_indiana.jpg'),
          placeholder: AssetImage(Constants.loading_image),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}