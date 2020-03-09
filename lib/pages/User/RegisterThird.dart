import 'package:flutter/material.dart';

import '../Tabs.dart';

class RegisterThirdPage extends StatefulWidget{
  final arguments;
  RegisterThirdPage({Key key, this.arguments}): super(key: key);

  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage>{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  Text('第三个注册页面表单'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text('表单填写账号密码'),
          SizedBox(height: 40),
          RaisedButton(
            child: Text('下一步'),
            onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(builder: (context) => new Tabs()),
                  (route) => route == null
              );
            },
          )
        ],
      ),
    );
  }
}