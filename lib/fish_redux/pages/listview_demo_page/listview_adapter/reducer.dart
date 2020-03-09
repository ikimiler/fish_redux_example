import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/state.dart';

import 'action.dart';

Reducer<ListviewDemoState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListviewDemoState>>{
      ListviewAction.action: _onAction,
    },
  );
}

ListviewDemoState _onAction(ListviewDemoState state, Action action) {
  final ListviewDemoState newState = state.clone();
  return newState;
}
