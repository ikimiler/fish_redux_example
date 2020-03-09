import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ListviewDemoState> buildEffect() {
  return combineEffects(<Object, Effect<ListviewDemoState>>{
    ListviewDemoAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ListviewDemoState> ctx) {}
