import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
  final arguments;

  const SearchPage({Key key, this.arguments}): super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('search'),
      ),
      body: Text('搜索页面接受的参数是${arguments != null ? arguments['id'] : '0'}')
    );
  }
}