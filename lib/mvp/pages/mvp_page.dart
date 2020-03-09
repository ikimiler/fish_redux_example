/* * 
 * @Author: kimi 
 * @Email: 24750@163.com 
 * @Date: 2020-03-04 10:23:45 
 * @Last Modified by: kimi
 * @Last Modified time: 2020-03-04 11:32:48
 * @Description: 登录的路由页面
 */
import 'package:flutter/material.dart';
import 'package:flutter_app/mvp/mvp/i_base_state.dart';
import 'package:flutter_app/mvp/mvp/presenter/test_presenter.dart';
import 'package:flutter_app/mvp/mvp/view/test_view.dart';

class MVPPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MVPPageState();
  }
}

class MVPPageState extends IBaseState<MVPPage, TestView, TestPresenter>
    implements TestView {
  String result;

  @override
  initPresenter() {
    return TestPresenter();
  }

  @override
  initData() {
    mPresenter.getDatas();
  }

  @override
  loadDataSuccess(String result) {
    setState(() {
      isLoading = false;
      this.result = result;
    });
  }

  @override
  Widget buildAppBar() {
    return AppBar(
      title: Text("MVPPage"),
    );
  }

  @override
  Widget buildBody() {
    return Center(
      child: Text("$result"),
    );
  }
}
