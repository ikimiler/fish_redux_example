import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_app/fish_redux/pages/three_page/action.dart';
import 'package:flutter_app/fish_redux/routes_config.dart';
import 'action.dart';
import 'state.dart';

Effect<OneState> buildEffect() {
  return combineEffects(<Object, Effect<OneState>>{
    OneAction.action: _onAction,
    OneAction.gotoComponentDemoPage: gotoComponentDemoPage,
    OneAction.gotoListDemoPage: gotoListDemoPage,
    OneAction.gotoStretchDemoPage: gotoStretchDemoPage,
    ThreeAction.receiveBroadcast: _onReceiveBroadcast,
  });
}

void _onAction(Action action, Context<OneState> ctx) {}
void gotoComponentDemoPage(Action action, Context<OneState> ctx) {
  Navigator.of(ctx.context).pushNamed(RouteConfig.COMPONENT_DEMO_PAGE_PATH,
      arguments: {"params": "hello flutter"});
}

void gotoListDemoPage(Action action, Context<OneState> ctx) {
  Navigator.of(ctx.context).pushNamed(RouteConfig.LISTVIEW_DEMO_PAGE_PATH,
      arguments: {"params": "hello flutter"});
}

void gotoStretchDemoPage(Action action, Context<OneState> ctx) {
  Navigator.of(ctx.context).pushNamed(RouteConfig.TWO_PAGE_PATH,
      arguments: {"params": "我是上个页面带过来的参数"});
}

void _onReceiveBroadcast(Action action, Context<OneState> ctx) {
  ctx.dispatch(OneActionCreator.updateFlag());
}
