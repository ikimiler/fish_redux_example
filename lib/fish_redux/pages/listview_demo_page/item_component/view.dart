import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 50,
    color: Colors.orangeAccent,
    child: Text("item ---- ${state.name}"),
    alignment: Alignment.center,
  );
}
