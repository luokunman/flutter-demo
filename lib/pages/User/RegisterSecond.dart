import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget{
  final arguments;
  RegisterSecondPage({Key key, this.arguments}): super(key: key);

  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage>{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  Text('第二个注册页面表单'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text('表单填写验证码'),
          SizedBox(height: 40),
          RaisedButton(
            child: Text('完成注册'),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed('registerThird');
            },
          )
        ],
      ),
    );
  }
}