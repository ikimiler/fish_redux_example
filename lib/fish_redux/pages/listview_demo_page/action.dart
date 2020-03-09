import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ListviewDemoAction { action }

class ListviewDemoActionCreator {
  static Action onAction() {
    return const Action(ListviewDemoAction.action);
  }
}
