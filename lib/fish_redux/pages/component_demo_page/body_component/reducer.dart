import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BodyState> buildReducer() {
  return asReducer(
    <Object, Reducer<BodyState>>{
      BodyAction.action: _onAction,
      BodyAction.refreshState: _onRefreshState,
    },
  );
}

BodyState _onAction(BodyState state, Action action) {
  final BodyState newState = state.clone();
  return newState;
}

BodyState _onRefreshState(BodyState state, Action action) {
  return state.clone()
    ..up = "refresh bodystate from bodycomponent"
    ..mid = "refresh bodystate from bodycomponent"
    ..down = "refresh bodystate from bodycomponent";
}
