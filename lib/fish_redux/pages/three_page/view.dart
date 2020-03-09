import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ThreeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("three page"),
    ),
    body: Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            dispatch(ThreeActionCreator.onSendBroadcast());
          },
          child: Text("点我开始跨页面通讯，请逐步返回页面进行查看"),
        ),
      ),
    ),
  );
}
