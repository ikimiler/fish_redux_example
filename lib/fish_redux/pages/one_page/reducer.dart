import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/three_page/action.dart';

import 'action.dart';
import 'state.dart';

Reducer<OneState> buildReducer() {
  return asReducer(
    <Object, Reducer<OneState>>{
      OneAction.action: _onAction,
      OneAction.updateFlag: _updateFlag,
    },
  );
}

OneState _updateFlag(OneState state, Action action) {
  return state.clone()..flag = "接收到广播拉";
}

OneState _onAction(OneState state, Action action) {
  final OneState newState = state.clone();
  return newState;
}
