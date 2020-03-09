import 'package:flutter/material.dart';
import 'package:flutter_app/fish_redux/app.dart';
import 'package:flutter_app/mvp/pages/mvp_page.dart';

//运行fish_redux架构示例
void main() => runApp(createApp());
//运行mvp架构示例
// void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "demo",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MVPPage(),
    );
  }
}
