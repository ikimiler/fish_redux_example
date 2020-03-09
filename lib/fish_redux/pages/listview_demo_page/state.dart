import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/item_component/state.dart';

class ListviewDemoState extends MutableSource
    implements Cloneable<ListviewDemoState> {
  List<String> datas = List.generate(300, (value) => "generate $value");

  @override
  ListviewDemoState clone() {
    return ListviewDemoState();
  }

  @override
  Object getItemData(int index) {
    return ItemState()..name = datas[index];
  }

  @override
  int get itemCount => datas.length;

  @override
  String getItemType(int index) {
    return index % 2 == 0 ? "item" : "line";
  }

  @override
  void setItemData(int index, Object data) {
    datas[index] = data;
  }
}

ListviewDemoState initState(Map<String, dynamic> args) {
  return ListviewDemoState();
}
