import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/component_demo_page/state.dart';

import 'action.dart';

Reducer<ComponentDemoState> buildReducer() {
  return asReducer(
    <Object, Reducer<ComponentDemoState>>{
      HeaderAction.action: _onAction,
      HeaderAction.refreshState: _onRefreshState,
    },
  );
}

ComponentDemoState _onAction(ComponentDemoState state, Action action) {
  final ComponentDemoState newState = state.clone();
  return newState;
}

ComponentDemoState _onRefreshState(ComponentDemoState state, Action action) {
  return state.clone()
    ..header = "refresh state from headercomponent"
    ..body = "refresh state from headercomponent"
    ..footer = "refresh state from headercomponent";
}
