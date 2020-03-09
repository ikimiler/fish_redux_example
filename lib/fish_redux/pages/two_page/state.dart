import 'package:fish_redux/fish_redux.dart';

class TwoState implements Cloneable<TwoState> {
  String text, flag = "";

  @override
  TwoState clone() {
    return TwoState()
      ..text = text
      ..flag = flag;
  }
}

TwoState initState(Map<String, dynamic> args) {
  return TwoState()..text = args["params"];
}
