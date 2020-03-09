import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/item_component/state.dart';
import 'action.dart';

Effect<ItemState> buildEffect() {
  return combineEffects(<Object, Effect<ItemState>>{
    LineAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ItemState> ctx) {}
