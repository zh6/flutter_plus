import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/common/constant.dart';
import 'package:flutter_plus/net/api_client.dart';
import 'package:flutter_plus/net/base_dio.dart';
import 'package:flutter_plus/route/routes.dart';
import 'package:flutter_plus/styles/app_colors.dart';
import 'package:flutter_plus/styles/app_spacers.dart';
import 'components/login_button.dart';
class LoginPage extends HookWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final pwdToogle = useState(false);
    return SafeArea(
      child: Container(
        color: AppColors.appBg,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("assets/images/logo.png"),
                          width: 72,
                          height: 72,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'My Flutter App',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ]),
                ),
                AppSpacers.verticalSpaceMedium,
                Container(
                  width: double.infinity * 0.75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FormBuilder(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FormBuilderTextField(
                              initialValue: "admin",
                              name: 'email',
                              maxLines: 1,
                              decoration: InputDecoration(
                                // suffixIcon: GestureDetector(
                                //   onTap: () => {_removePhone()},
                                //   child: _uname.toString().isNotEmpty ? Icon(Icons.cancel, size: 18) : SizedBox(),
                                // ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Color.fromRGBO(245, 247, 247, 1),
                                hintText: "请输入手机号码",
                                prefixIcon: Icon(
                                  Icons.phone_iphone,
                                  size: 20,
                                ), //添加内部左边图标,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(context,
                                    errorText: "手机号码不能为空"),
                                // FormBuilderValidators.email(context),
                              ]),
                            ),
                            AppSpacers.verticalSpaceSmall,
                            FormBuilderTextField(
                              initialValue: "123456",
                              name: 'password',
                              maxLines: 1,
                              decoration: InputDecoration(
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    // GestureDetector(
                                    //     onTap: () => _removePassword(),
                                    //     child: isshow.value ? Icon(Icons.cancel, size: 18) : SizedBox()
                                    // ),
                                    // SizedBox(width: 10),
                                    GestureDetector(
                                      onTap: () =>
                                          pwdToogle.value = !pwdToogle.value,
                                      child:
                                          Icon(Icons.remove_red_eye, size: 18),
                                    ),
                                    SizedBox(width: 15),
                                  ],
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Color.fromRGBO(245, 247, 247, 1),
                                hintText: "请输入密码",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  size: 20,
                                ), //添加内部左边图标,
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                              obscureText: pwdToogle.value,
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(context,
                                    errorText: "密码不能为空"),
                                FormBuilderValidators.minLength(context, 6,
                                    errorText: "密码不能少于6位"),
                              ]),
                              onSubmitted: (_) => _submit(context),
                            ),
                            // 登录按钮
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: LoginButton(
                                text: '登录',
                                handleOk: () => _submit(context),
                              ),
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () => {},
                                  child: Text(
                                    '找回密码',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(155, 155, 155, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 14),
                                SizedBox(
                                  width: 1,
                                  height: 16,
                                  child: const DecoratedBox(
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(217, 217, 217, 1)),
                                  ),
                                ),
                                SizedBox(width: 14),
                                GestureDetector(
                                  onTap: () => {},
                                  child: Text(
                                    '新用户注册',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(18, 18, 18, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit(BuildContext context) async {
    if (_formKey.currentState!.saveAndValidate()) {
      // username: _formKey.currentState.value['email'],
      // password: _formKey.currentState.value['password']);
      Map<String, dynamic> map = {
        "authCode": "O0i9",
        "loginName": "admin",
        "password": "admin"
      };
      try {
        var result = await ApiClient().login(map);
        if (result.data['state'] == 0) {
          SpUtil.putObject(Constant.USER, result.data['loginUser']);
          SpUtil.putString(Constant.TOKEN, 'Bearer ${result.data['token']}');
          Routes.navigateTo(Routes.home,replace: true);
        }
      } catch (e) {
        BaseDio.getInstance().getDioError(e);
      }
    }
  }
}
