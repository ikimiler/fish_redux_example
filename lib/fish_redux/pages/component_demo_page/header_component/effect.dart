import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/component_demo_page/state.dart';
import 'action.dart';

Effect<ComponentDemoState> buildEffect() {
  return combineEffects(<Object, Effect<ComponentDemoState>>{
    HeaderAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ComponentDemoState> ctx) {}
