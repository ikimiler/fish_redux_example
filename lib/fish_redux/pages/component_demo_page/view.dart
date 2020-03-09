import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    ComponentDemoState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("component demo"),
    ),
    body: Container(
      child: ListView(
        children: <Widget>[
          //这里直接取映射好的component
          viewService.buildComponent("header"),
          viewService.buildComponent("body"),
          viewService.buildComponent("footer"),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text("ComponentDemoState.header : ${state.header}"),
                Text("ComponentDemoState.body : ${state.body}"),
                Text("ComponentDemoState.footer : ${state.footer}"),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
