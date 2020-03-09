import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/component_demo_page/state.dart';

import 'action.dart';

Reducer<ComponentDemoState> buildReducer() {
  return asReducer(
    <Object, Reducer<ComponentDemoState>>{
      FooterAction.action: _onAction,
      FooterAction.refreshState: _onRefreshState,
    },
  );
}

ComponentDemoState _onAction(ComponentDemoState state, Action action) {
  final ComponentDemoState newState = state.clone();
  return newState;
}

ComponentDemoState _onRefreshState(ComponentDemoState state, Action action) {
  return state.clone()
    ..header = "refresh state from footercomponent"
    ..body = "refresh state from footercomponent"
    ..footer = "refresh state from footercomponent";
}
