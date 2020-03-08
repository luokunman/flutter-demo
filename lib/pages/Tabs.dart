import 'package:flutter/material.dart';

import './tabs/Settings.dart';
import './tabs/Category.dart';
import './tabs/Home.dart';


class Tabs extends StatefulWidget{
  Tabs({Key key}): super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs>{
  List PageList = [HomePage(), CategorysPage(), SettingsPage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: this.PageList[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.currentIndex,
          fixedColor: Color.fromRGBO(94, 60, 237, 1),
          type: BottomNavigationBarType.fixed, // 配置底部按钮可以有多个
          onTap: (int index){
            this.setState((){
              this.currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                title: Text("分类")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text("设置")
            )
          ]
      ),
    );
  }
}
