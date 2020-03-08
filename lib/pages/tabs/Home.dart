import 'package:flutter/material.dart';

import '../Search.dart';


class HomePage extends StatefulWidget{
  final arguments;

  HomePage({Key key,this.arguments}): super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转搜索'),
          onPressed: (){
            Navigator.of(context).pushNamed('search', arguments: {
              'id': 123
            });
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('商品列表'),
          onPressed: (){
            Navigator.of(context).pushNamed('product', arguments: {
              'data': {
                [
                  {
                    'id': 1,
                    'productName': '因为怕痛所以全点防御'
                  },
                  {
                    'id': 2,
                    'productName': '因为怕痛所以全点敏捷'
                  },
                  {
                    'id': 3,
                    'productName': '因为怕死所以全点生命值'
                  }
                ]
              }
            });
          }
        )
      ],
    );
  }
}