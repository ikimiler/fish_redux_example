import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TwoAction { action, gotoThreePage, updateFlag }

class TwoActionCreator {
  static Action onAction() {
    return const Action(TwoAction.action);
  }

  static Action gotoThreePage() {
    return const Action(TwoAction.gotoThreePage);
  }

  static Action updateFlag() {
    return const Action(TwoAction.updateFlag);
  }
}
