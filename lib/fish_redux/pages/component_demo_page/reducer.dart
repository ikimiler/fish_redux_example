import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ComponentDemoState> buildReducer() {
  return asReducer(
    <Object, Reducer<ComponentDemoState>>{
      ComponentDemoAction.action: _onAction,
      ComponentDemoAction.refreshState: _onRefreshState,
    },
  );
}

ComponentDemoState _onAction(ComponentDemoState state, Action action) {
  final ComponentDemoState newState = state.clone();
  return newState;
}

ComponentDemoState _onRefreshState(ComponentDemoState state, Action action) {
  return state.clone()
    ..header = "refreshHeader"
    ..body = "refreshBody"
    ..footer = "refreshFooter";
}
