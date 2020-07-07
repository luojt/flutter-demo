import 'package:flutter_demo/commom/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/utils/route_manager.dart';
import 'package:flutter/services.dart';
class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MinePageState();
  }
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);


    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('我的'),
        backgroundColor: AppColors.gray_F3F3F3,
      ),
      child: Center(
          child: Column(children: <Widget>[
        CupertinoButton(
          color: AppColors.blue_0078FF,
          child: Text('登录', style: TextStyle(color: Colors.white)),
          onPressed: () {
            RouteManager.route(context, RouteConfig.MineRoute);
          },
        ),
        Text(
          '个人中心的内容',
          textDirection: TextDirection.ltr,
        ),
        RaisedButton(
          child: Text("RaisedButton控件"),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {},
        ),
        Image.network(
            "https://avatars1.githubusercontent.com/u/41252899?s=40&v=4"),
      ])),
    );
  }
}
