import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ComponentDemoAction { action, refreshState }

class ComponentDemoActionCreator {
  static Action onAction() {
    return const Action(ComponentDemoAction.action);
  }

  static Action onRefreshState() {
    return const Action(ComponentDemoAction.refreshState);
  }
}
