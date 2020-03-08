import 'package:flutter/material.dart';

import '../pages/tabs/Home.dart';
import '../pages/tabs/Category.dart';
import '../pages/tabs/Settings.dart';
import '../pages/Search.dart';
import '../pages/Form.dart';
import '../pages/Form.dart';

final routes = {
  'home': (ctx, {arguments}) => HomePage(arguments: arguments),
  'category': (ctx) => CategorysPage(),
  'settings': (ctx) => SettingsPage(),
  'form': (ctx) => FormPage(),
  'search': (ctx, {arguments}) => SearchPage(arguments: arguments),
//  'product' (ctx, {arguments}) => Product(arguments: arguments),
};

var onGenerateRoute = (RouteSettings settings){
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.name != null) {
    final Route route = MaterialPageRoute(
        builder: (ctx) => pageContentBuilder(ctx, arguments: settings.arguments)
      );
      return route;
    }else {
      final Route route = MaterialPageRoute(builder: (ctx) => pageContentBuilder(ctx));
      return route;
    }
  }
};