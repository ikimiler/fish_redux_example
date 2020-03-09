import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum BodyAction { action, refreshState }

class BodyActionCreator {
  static Action onAction() {
    return const Action(BodyAction.action);
  }

  static Action onRefreshState() {
    return const Action(BodyAction.refreshState);
  }
}
