import 'package:fish_redux/fish_redux.dart';

class OneState implements Cloneable<OneState> {
  String flag = "";

  @override
  OneState clone() {
    return OneState()..flag = flag;
  }
}

OneState initState(Map<String, dynamic> args) {
  return OneState();
}
