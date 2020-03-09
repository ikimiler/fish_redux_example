/* * 
 * @Author: kimi 
 * @Email: 24750@163.com 
 * @Date: 2020-03-04 10:20:28 
 * @Last Modified by: kimi
 * @Last Modified time: 2020-03-04 11:33:00
 * @Description: 
 */

import 'package:flutter_app/mvp/mvp/i_base_view.dart';

abstract class TestView extends IBaseView {
  loadDataSuccess(String result);
}
