import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_app/fish_redux/pages/three_page/action.dart';
import 'package:flutter_app/fish_redux/routes_config.dart';
import 'action.dart';
import 'state.dart';

Effect<TwoState> buildEffect() {
  return combineEffects(<Object, Effect<TwoState>>{
    TwoAction.action: _onAction,
    TwoAction.gotoThreePage: onGotoThreePage,
    ThreeAction.receiveBroadcast: _onReceiveBroadcast,
  });
}

void _onAction(Action action, Context<TwoState> ctx) {}
void _onReceiveBroadcast(Action action, Context<TwoState> ctx) {
  ctx.dispatch(TwoActionCreator.updateFlag());
}

void onGotoThreePage(Action action, Context<TwoState> ctx) {
  Navigator.of(ctx.context).pushNamed(RouteConfig.THREE_PAGE_PATH);
}
