import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ListviewDemoState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListviewDemoState>>{
      ListviewDemoAction.action: _onAction,
    },
  );
}

ListviewDemoState _onAction(ListviewDemoState state, Action action) {
  final ListviewDemoState newState = state.clone();
  return newState;
}
