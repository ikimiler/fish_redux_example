/* * 
 * @Author: kimi 
 * @Email: 24750@163.com 
 * @Date: 2020-03-04 10:19:51 
 * @Last Modified by: kimi
 * @Last Modified time: 2020-03-04 11:32:54
 * @Description: 登录业务具体的presenter
 */

import 'package:flutter_app/mvp/mvp/i_base_presenter.dart';
import 'package:flutter_app/mvp/mvp/view/test_view.dart';

class TestPresenter extends IBasePresenter<TestView> {
  /**
   * 这里去拉取数据，执行业务逻辑等操作
   */
  getDatas() {
    view.showLoadingView();
    Future.delayed(Duration(seconds: 3), () => "this is getdatas result")
        .then((result) {
      view.loadDataSuccess(result);
    }).catchError((onError) {
      view.showErrorView();
    });
  }
}
