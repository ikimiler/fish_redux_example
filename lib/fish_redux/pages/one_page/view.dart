import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(OneState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("fish_redux"),
    ),
    body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              dispatch(OneActionCreator.gotoComponentDemoPage());
            },
            child: Text("component 示例"),
          ),
          RaisedButton(
            onPressed: () {
              dispatch(OneActionCreator.gotoListDemoPage());
            },
            child: Text("listview 示例"),
          ),
          RaisedButton(
            onPressed: () {
              dispatch(OneActionCreator.gotoStretchDemoPage());
            },
            child: Text("跨页面进行state通讯以及传参示例"),
          ),
          Text(state.flag)
        ],
      ),
    ),
  );
}
