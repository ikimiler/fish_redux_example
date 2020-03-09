import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/item_component/state.dart';

import 'action.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 1,
    color: Colors.green,
  );
}
