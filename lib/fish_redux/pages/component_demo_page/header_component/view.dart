import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/fish_redux/pages/component_demo_page/state.dart';

import 'action.dart';

Widget buildView(
    ComponentDemoState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 150,
    alignment: Alignment.center,
    color: Colors.red,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
            color: Colors.orangeAccent,
            onPressed: () {
              dispatch(HeaderActionCreator.onRefreshState());
            },
            child: Text("headercomponent 刷新页面的state")),
        Text("headercomponent state : ${state.toString()}")
      ],
    ),
  );
}
