import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/component_demo_page/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'view.dart';

class FooterComponent extends Component<ComponentDemoState> {
  FooterComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ComponentDemoState>(
              adapter: null, slots: <String, Dependent<ComponentDemoState>>{}),
        );
}
