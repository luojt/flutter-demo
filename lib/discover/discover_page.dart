import 'package:flutter_demo/commom/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'follow/weibo_follow_page.dart';
import 'hot/weibo_hot_page.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DiscoverPageState();
  }
}

TabController _controller;

class _DiscoverPageState extends State<DiscoverPage> {
  final List<String> _tabValues = [
    '关注',
    '热门',
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: _tabValues.length, //Tab页数量
      vsync: ScrollableState(), //动画效果的异步处理
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('功能性组件'),
          backgroundColor: AppColors.gray_F3F3F3,
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Color(0xffF9F9F9),
                    //  color:Colors.red,
                    alignment: Alignment.center,
                    child: TabBar(
                        isScrollable: true,
                        indicatorColor: Color(0xffFF3700),
                        indicator: UnderlineTabIndicator(
                            borderSide:
                                BorderSide(color: Color(0xffFF3700), width: 2),
                            insets: EdgeInsets.only(bottom: 7)),
                        labelColor: Color(0xff333333),
                        unselectedLabelColor: Color(0xff666666),
                        labelStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                        unselectedLabelStyle: TextStyle(fontSize: 16.0),
                        indicatorSize: TabBarIndicatorSize.label,
                        controller: _controller,
                        tabs: [
                          Tab(
                            text: _tabValues[0],
                          ),
                          Tab(
                            text: _tabValues[1],
                          ),
                        ]),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Image.asset("assets/images/ic_main_add.png",
                          width: 40.0, height: 40.0),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _controller,
                  children: <Widget>[WeiBoFollowPage(), WeiBoHotPage()],
                ),
              )
            ],
          ),
        ));
  }
}
