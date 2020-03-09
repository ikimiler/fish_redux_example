import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LineAction { action }

class LineActionCreator {
  static Action onAction() {
    return const Action(LineAction.action);
  }
}
