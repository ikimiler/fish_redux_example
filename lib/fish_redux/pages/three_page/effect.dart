import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ThreeState> buildEffect() {
  return combineEffects(<Object, Effect<ThreeState>>{
    ThreeAction.action: _onAction,
    ThreeAction.sendBroadcast: _onSendBroadcast,
    Lifecycle.initState: _onInitState,
    Lifecycle.dispose: _onDispose,
  });
}

void _onAction(Action action, Context<ThreeState> ctx) {}
//state初始化后的action，一般用来进入页面拉取相关数据操作，这里可以执行异步任务
void _onInitState(Action action, Context<ThreeState> ctx) {}
//页面销毁的action，用来清楚一个数据
void _onDispose(Action action, Context<ThreeState> ctx) {}
void _onSendBroadcast(Action action, Context<ThreeState> ctx) {
  //跨页面/跨component通讯，可以使用这个发送广播
  //然后再想通讯的页面注册相应的effect，就可以了
  ctx.broadcast(ThreeActionCreator.onReceiveBroadcast());
  //下边这个暂时没有尝试出来，看字面意思是通知所有的effect，但自己验证的时候，并不行 todo
  // ctx.broadcastEffect(ThreeActionCreator.onReceiveBroadcast());
}
