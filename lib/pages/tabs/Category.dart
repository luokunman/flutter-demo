import 'package:flutter/material.dart';

import '../Form.dart';

class CategorysPage extends StatefulWidget{
  CategorysPage({Key key}): super(key: key);

  _CategorysState createState() => _CategorysState();
}

class _CategorysState extends State<CategorysPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转表单页面'),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context)=>FormPage(title: '啦啦啦')
              )
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    );
  }
}