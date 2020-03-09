/* * 
 * @Author: kimi 
 * @Email: 24750@163.com 
 * @Date: 2020-03-04 10:20:42 
 * @Last Modified by: kimi
 * @Last Modified time: 2020-03-04 11:33:09
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:flutter_app/mvp/mvp/i_base_presenter.dart';
import 'package:flutter_app/mvp/mvp/i_base_view.dart';

abstract class IBaseState<S extends StatefulWidget, V extends IBaseView,
    P extends IBasePresenter> extends State<S> implements IBaseView {
  P mPresenter;

  bool isLoading = false; //是否加载中
  bool isEmpty = false; //是否为空
  bool isError = false; //是否错误

  /**
   * 初始化presenter
   */
  P initPresenter();

  /**
   * 初始化数据
   */
  initData() {}

  @override
  void initState() {
    super.initState();
    mPresenter = initPresenter();
    if (mPresenter != null) {
      mPresenter.onAttachView(this);
    }
    initData();
  }

  @override
  void dispose() {
    super.dispose();
    if (mPresenter != null) {
      mPresenter.onDetachView();
    }
  }

  /**
   * 渲染appbar
   */
  Widget buildAppBar() {
    return AppBar(title: Text(""));
  }

  /**
   * 子类实现此方法，渲染真实的widget
   */
  Widget buildBody() {
    return null;
  }

  /**
   * 渲染加载框
   */
  Widget buildLoading() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(
            backgroundColor: Color(Colors.red.value),
          ),
          Text("努力加载中...")
        ],
      ),
    );
  }

  /**
   * 渲染空页面
   */
  Widget buildEmpty() {
    return Text("empty");
  }

  /**
   * 渲染错误页面
   */
  Widget buildError() {
    return Text("error");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: isLoading
          ? buildLoading()
          : isEmpty ? buildEmpty() : isError ? buildError() : buildBody(),
    );
  }

  @override
  showLoadingView() {
    setState(() {
      isLoading = true;
      isError = false;
      isEmpty = false;
    });
  }

  @override
  hiddenLoadingView() {
    setState(() {
      isLoading = false;
    });
  }

  @override
  showEmptyView() {
    setState(() {
      isLoading = false;
      isError = false;
      isEmpty = true;
    });
  }

  @override
  showErrorView() {
    setState(() {
      isLoading = false;
      isEmpty = false;
      isError = true;
    });
  }
}
