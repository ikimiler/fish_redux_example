import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/fish_redux/pages/listview_demo_page/item_component/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'view.dart';

class LineComponent extends Component<ItemState> {
  LineComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ItemState>(
              adapter: null, slots: <String, Dependent<ItemState>>{}),
        );
}
