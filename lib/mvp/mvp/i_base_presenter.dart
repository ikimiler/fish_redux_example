/* * 
 * @Author: kimi 
 * @Email: 24750@163.com 
 * @Date: 2020-03-04 10:20:35 
 * @Last Modified by: kimi
 * @Last Modified time: 2020-03-04 11:33:04
 * @Description: 
 */

import 'package:flutter_app/mvp/mvp/i_base_view.dart';

abstract class IBasePresenter<V extends IBaseView> {
  V view;

  /**
   * 挂载view
   */
  onAttachView(V view) {
    this.view = view;
  }

  /**
   * 卸载view
   */
  onDetachView() {
    this.view = null;
  }
}
