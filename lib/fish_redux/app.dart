import 'package:flutter/material.dart' hide Action;
import 'package:flutter_app/fish_redux/routes_config.dart';

/// 创建应用的根 Widget
/// 1. 创建一个简单的路由，并注册页面
/// 2. 对所需的页面进行和 AppStore 的连接
/// 3. 对所需的页面进行 AOP 的增强
Widget createApp() {
  return MaterialApp(
    title: 'demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    home: RouteConfig.ROUTES.buildPage(RouteConfig.ONE_PAGE_PATH, null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return RouteConfig.ROUTES.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
