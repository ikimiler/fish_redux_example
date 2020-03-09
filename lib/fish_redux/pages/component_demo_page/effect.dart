import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ComponentDemoState> buildEffect() {
  return combineEffects(<Object, Effect<ComponentDemoState>>{
    ComponentDemoAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ComponentDemoState> ctx) {
}
