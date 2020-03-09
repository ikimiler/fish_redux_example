import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/item_component/component.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/line_component/component.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/state.dart';

import 'reducer.dart';

class ListviewAdapter extends SourceFlowAdapter<ListviewDemoState> {
  ListviewAdapter()
      : super(
          pool: <String, Component<Object>>{
            //这里同样映射component
            //左侧key 对应数据源的getItemType 方法
            "item": ItemComponent(),
            "line": LineComponent(),
          },
          reducer: buildReducer(),
        );
}
