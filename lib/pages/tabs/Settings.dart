import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget{
  SettingsPage({Key key}): super(key: key);

  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text('我是设置页'),
    );
  }
}