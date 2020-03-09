import 'package:fish_redux/fish_redux.dart';

class ComponentDemoState implements Cloneable<ComponentDemoState> {
  String header = "", body = "", footer = "";

  @override
  ComponentDemoState clone() {
    return ComponentDemoState()
      ..header = header
      ..body = body
      ..footer = footer;
  }

  @override
  String toString() {
    return "header = " + header + " body = " + body + " footer = " + footer;
  }
}

ComponentDemoState initState(Map<String, dynamic> args) {
  return ComponentDemoState();
}
