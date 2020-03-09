import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/component_demo_page/page.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/page.dart';
import 'package:flutter_app/fish_redux/pages/one_page/page.dart';
import 'package:flutter_app/fish_redux/pages/three_page/page.dart';
import 'package:flutter_app/fish_redux/pages/two_page/page.dart';

class RouteConfig {
  static final String ONE_PAGE_PATH = "one_page_path";
  static final String TWO_PAGE_PATH = "two_page_path";
  static final String THREE_PAGE_PATH = "three_page_path";
  static final String COMPONENT_DEMO_PAGE_PATH = "component_demo_page_path";
  static final String LISTVIEW_DEMO_PAGE_PATH = "listview_demo_page_path";

  static final AbstractRoutes ROUTES =
      PageRoutes(pages: <String, Page<Object, dynamic>>{
    RouteConfig.ONE_PAGE_PATH: OnePage(),
    RouteConfig.TWO_PAGE_PATH: TwoPage(),
    RouteConfig.THREE_PAGE_PATH: ThreePage(),
    RouteConfig.LISTVIEW_DEMO_PAGE_PATH: ListviewDemoPage(),
    RouteConfig.COMPONENT_DEMO_PAGE_PATH: ComponentDemoPage(),
  }, visitor: (String path, Page<Object, dynamic> page) {});
}
