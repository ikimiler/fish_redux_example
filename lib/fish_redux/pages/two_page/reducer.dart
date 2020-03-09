import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TwoState> buildReducer() {
  return asReducer(
    <Object, Reducer<TwoState>>{
      TwoAction.action: _onAction,
      TwoAction.updateFlag: _onUpdateFlag,
    },
  );
}

TwoState _onAction(TwoState state, Action action) {
  final TwoState newState = state.clone();
  return newState;
}

TwoState _onUpdateFlag(TwoState state, Action action) {
  final TwoState newState = state.clone();
  newState.flag = "接收到广播拉";
  return newState;
}
