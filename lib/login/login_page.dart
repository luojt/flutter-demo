import 'package:flutter_demo/commom/app_colors.dart';
import 'package:flutter_demo/utils//route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
class LoginPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
    Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('登录'),
          backgroundColor: AppColors.gray_F3F3F3,
          transitionBetweenRoutes: false,
          actionsForegroundColor: AppColors.black_666666,
        ),
        child: Center(
          child: CupertinoButton(
            color: AppColors.blue_0078FF,
            child: Text('注册', style: TextStyle(color: Colors.white)),
            onPressed: (){
//              RouteManager.route(context, RouteConfig.RegisterRoute);
            },
          ),
        ),
      );
    }
}