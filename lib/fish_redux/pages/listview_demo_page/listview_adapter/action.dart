import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ListviewAction { action }

class ListviewActionCreator {
  static Action onAction() {
    return const Action(ListviewAction.action);
  }
}
