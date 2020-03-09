import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    ListviewDemoState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("adapter demo"),
    ),
    body: ListView.builder(
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    ),
  );
}
