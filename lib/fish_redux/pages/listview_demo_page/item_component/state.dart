import 'package:fish_redux/fish_redux.dart';

class ItemState implements Cloneable<ItemState> {
  String name;

  @override
  ItemState clone() {
    return ItemState()..name = name;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
