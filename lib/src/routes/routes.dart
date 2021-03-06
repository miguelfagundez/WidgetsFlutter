import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/pages/avatar_page.dart';
import 'package:flutter_widgets/src/pages/card_page.dart';
import 'package:flutter_widgets/src/pages/check_page.dart';
import 'package:flutter_widgets/src/pages/home_page.dart';
import 'package:flutter_widgets/src/pages/animated_container_page.dart';
import 'package:flutter_widgets/src/pages/input_page.dart';
import 'package:flutter_widgets/src/pages/listview_page.dart';
import 'package:flutter_widgets/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
    'home'     : (BuildContext context) => HomePage(),
    'alert'    : (BuildContext context) => AlertPage(),
    'avatar'   : (BuildContext context) => AvatarPage(),
    'card'     : (BuildContext context) => CardPage(),
    'animated' : (BuildContext context) => AnimatedContainerPage(),
    'inputs'   : (BuildContext context) => InputPage(),
    'slider'   : (BuildContext context) => SliderPage(),
    'checkbox' : (BuildContext context) => CheckPage(),
    'list'     : (BuildContext context) => ListViewPage(),
  };
}
