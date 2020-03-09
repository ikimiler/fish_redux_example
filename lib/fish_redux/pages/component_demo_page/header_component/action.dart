import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HeaderAction { action, refreshState }

class HeaderActionCreator {
  static Action onAction() {
    return const Action(HeaderAction.action);
  }

  static Action onRefreshState() {
    return const Action(HeaderAction.refreshState);
  }
}
