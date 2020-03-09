import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TwoState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("two page"),
    ),
    body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(state.text),
          RaisedButton(
            onPressed: () {
              dispatch(TwoActionCreator.gotoThreePage());
            },
            child: Text("点我进入跨页面通讯示例"),
          ),
          Text(state.flag)
        ],
      ),
    ),
  );
}
