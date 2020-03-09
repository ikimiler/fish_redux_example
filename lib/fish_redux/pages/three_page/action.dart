import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ThreeAction { action, sendBroadcast, receiveBroadcast }

class ThreeActionCreator {
  static Action onAction() {
    return const Action(ThreeAction.action);
  }

  static Action onSendBroadcast() {
    return const Action(ThreeAction.sendBroadcast);
  }

  static Action onReceiveBroadcast() {
    return const Action(ThreeAction.receiveBroadcast);
  }
}
