import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(BodyState state, Dispatch dispatch, ViewService viewService) {
  return Container(
      height: 200,
      alignment: Alignment.center,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
              color: Colors.orangeAccent,
              onPressed: () {
                dispatch(BodyActionCreator.onRefreshState());
              },
              child: Text("bodycomponent 刷新自己的state，同时同步到page 的state")),
          Text("bodycomponent state : ${state.toString()}"),
        ],
      ));
}
