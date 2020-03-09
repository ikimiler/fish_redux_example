import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/component_demo_page/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BodyComponent extends Component<BodyState> {
  BodyComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<BodyState>(
              adapter: null, slots: <String, Dependent<BodyState>>{}),
        );
}

class BodyComponentConnec extends ConnOp<ComponentDemoState, BodyState> {
  //如何从BodyState 映射到 ComponentDemoState
  @override
  void set(ComponentDemoState state, BodyState subState) {
    // super.set(state, subState);
    state.header = subState.up;
    state.body = subState.mid;
    state.footer = subState.down;
  }

  //如何从ComponentDemoState 映射到 BodyState
  @override
  BodyState get(ComponentDemoState state) {
    // return super.get(state);
    return BodyState()
      ..up = state.header
      ..mid = state.body
      ..down = state.footer;
  }
}
