import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/listview_adapter/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ListviewDemoPage extends Page<ListviewDemoState, Map<String, dynamic>> {
  ListviewDemoPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ListviewDemoState>(
              //这里映射adapter
              adapter: NoneConn<ListviewDemoState>() + ListviewAdapter(),
              slots: <String, Dependent<ListviewDemoState>>{
                //同时也可以映射components
              }),
          middleware: <Middleware<ListviewDemoState>>[],
        );
}
