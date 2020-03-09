import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget{
  final arguments;
  RegisterPage({Key key, this.arguments}): super(key: key);

  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('我是注册页面'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('下一步'),
              onPressed: (){
                Navigator.of(context).pushReplacementNamed('registerSecond');
              },
            )
          ],
        )
    );
  }
}