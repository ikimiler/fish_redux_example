import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FooterAction { action, refreshState }

class FooterActionCreator {
  static Action onAction() {
    return const Action(FooterAction.action);
  }

  static Action onRefreshState() {
    return const Action(FooterAction.refreshState);
  }
}
