import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/component_demo_page/body_component/component.dart';
import 'package:flutter_app/fish_redux/pages/component_demo_page/footer_component/component.dart';
import 'package:flutter_app/fish_redux/pages/component_demo_page/header_component/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ComponentDemoPage extends Page<ComponentDemoState, Map<String, dynamic>> {
  ComponentDemoPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ComponentDemoState>(
              adapter: null,
              slots: <String, Dependent<ComponentDemoState>>{
                //slots这里是一个映射作用以及数据page的state如何和component的state的进行关联，需要用到connect
                //一个页面可以由多个component自由组装，component也可以由其他页面进行复用
                //这里分别映射三个component，其中header的state 共用当前页面的state，所以采用 NoneConn 连接方式
                //body的state用body component本身的state，所以需要connect 从ComponentDemoState映射到BodyState
                //footer和header同理，共用当前页面的state
                "header": NoneConn<ComponentDemoState>() + HeaderComponent(),
                "body": BodyComponentConnec() + BodyComponent(),
                "footer": NoneConn<ComponentDemoState>() + FooterComponent(),
              }),
          middleware: <Middleware<ComponentDemoState>>[],
        );
}
