import 'package:flutter/material.dart';


class ProductListPage extends StatelessWidget{
  final Map arguments;

  final String title;
  ProductListPage({this.title="产品列表", this.arguments});
  List<Widget> _getData() {
    List<Widget> list = new List();
    for(var i = 0; i < this.arguments['data'].length; i++) {
      list.add(ListTile(
        title: Text('id: ${this.arguments['data'][i]['id']}-------productName:${this.arguments['data'][i]['productName']}'),
      ));
    }
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title)
      ),
      body: ListView(
        children: this._getData(),
      ),
    );
  }
}