import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/pages/avatar_page.dart';
import 'package:flutter_widgets/src/pages/home_page.dart';
import 'package:flutter_widgets/src/routes/routes.dart';
//import 'package:flutter_widgets/src/pages/home_temp.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      // home: HomePage()
      initialRoute: 'home',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('Error');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}