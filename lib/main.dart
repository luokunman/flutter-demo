import 'package:flutter/material.dart';
import './pages/Tabs.dart';

import './route/Route.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
