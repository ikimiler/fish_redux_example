import 'package:fish_redux/fish_redux.dart';

class BodyState implements Cloneable<BodyState> {
  String up = "", mid = "", down = "";

  @override
  BodyState clone() {
    return BodyState()
      ..up = up
      ..mid = mid
      ..down = down;
  }

  @override
  String toString() {
    return "up = " + up + " mid = " + mid + " down = " + down;
  }
}

BodyState initState(Map<String, dynamic> args) {
  return BodyState();
}
