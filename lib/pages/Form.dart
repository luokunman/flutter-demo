import 'package:flutter/material.dart';

class FormPage extends StatelessWidget{
  String title;
  FormPage({this.title="表单"});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => {
            Navigator.of(context).pop()
          },
          iconSize: 21
        )
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是表单页面'),
          )
        ],
      ),
    );
  }
}