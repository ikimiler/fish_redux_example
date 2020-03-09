import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum OneAction {
  action,
  gotoComponentDemoPage,
  gotoListDemoPage,
  gotoStretchDemoPage,
  updateFlag,
}

class OneActionCreator {
  static Action onAction() {
    return const Action(OneAction.action);
  }

  static Action gotoComponentDemoPage() {
    return const Action(OneAction.gotoComponentDemoPage);
  }

  static Action gotoListDemoPage() {
    return const Action(OneAction.gotoListDemoPage);
  }

  static Action gotoStretchDemoPage() {
    return const Action(OneAction.gotoStretchDemoPage);
  }

  static Action updateFlag() {
    return const Action(OneAction.updateFlag);
  }
}
