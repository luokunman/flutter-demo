import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget{
  SettingsPage({Key key}): super(key: key);

  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('登录'),
          onPressed: () {
            Navigator.of(context).pushNamed('login');
          },
          color: Theme.of(context).accentColor,
        ),
        RaisedButton(
          child: Text('注册'),
          onPressed: () {
            Navigator.of(context).pushNamed('register');
          },
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }
}