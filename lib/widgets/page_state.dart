enum PageState {
  idle,
  busy, //加载中
  empty, //无数据
  error, //加载失败
  success,//加载成功
}
/// 错误类型
enum PageStateErrorType {
  defaultError,
  networkTimeOutError, //网络错误
  unauthorizedError //为授权(一般为未登录)
}
