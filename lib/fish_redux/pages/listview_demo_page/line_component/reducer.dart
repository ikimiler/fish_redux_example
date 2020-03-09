import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/item_component/state.dart';

import 'action.dart';

Reducer<ItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItemState>>{
      LineAction.action: _onAction,
    },
  );
}

ItemState _onAction(ItemState state, Action action) {
  final ItemState newState = state.clone();
  return newState;
}
