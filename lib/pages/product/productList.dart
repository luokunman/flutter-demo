import 'package:flutter/material.dart';


class ProductListPage extends StatelessWidget{
  final Map arguments;

  final String title;
  ProductListPage({this.title="表单", this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title)
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