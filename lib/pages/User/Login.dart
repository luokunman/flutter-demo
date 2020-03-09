import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  final arguments;
  LoginPage({Key key, this.arguments}): super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('我是登录页面'),
      ),
      body: Text('123123')
    );
  }
}