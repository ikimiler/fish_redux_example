/* * 
 * @Author: kimi 
 * @Email: 24750@163.com 
 * @Date: 2020-03-04 10:20:50 
 * @Last Modified by: kimi
 * @Last Modified time: 2020-03-04 11:33:17
 * @Description: 
 */
abstract class IBaseView {
  /**
   * 显示加载进度框
   */
  showLoadingView();

  /**
   * 隐藏加载进度框
   */
  hiddenLoadingView();

  /**
   * 展示空页面，如空数据等
   */
  showEmptyView();

  /**
   * 展示错误页面，如服务器500，404等
   */
  showErrorView();
}
