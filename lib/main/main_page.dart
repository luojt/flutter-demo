import 'package:flutter/material.dart';
import 'bottom_nav_widget.dart';
import 'package:flutter_demo/commom/app_colors.dart';
import 'package:flutter_demo/commom/app_icons.dart';
import 'package:flutter_demo/commom/app_string.dart';
import 'package:flutter_demo/home/home_page.dart';
import 'package:flutter_demo/mine/mine_page.dart';
import 'package:flutter_demo/discover/discover_page.dart';


/**
 * 主页面
 */
class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectIndex = 0;
  final List<TabItemBar> tabItemBarList = [
    TabItemBar(
      title: AppString.STR_HOME,
      titleNormalColor: AppColors.black_666666,
      titleSelectedColor: AppColors.blue_0078FF,
      normalIcon: Icon(AppIcons.home,size: 20.0,color: AppColors.black_666666,),
      selectedIcon:Icon(AppIcons.home, size: 20.0, color: AppColors.blue_0078FF),
    ),
    TabItemBar(
      title: AppString.STR_DISCOVER,
      titleNormalColor: AppColors.black_666666,
      titleSelectedColor: AppColors.blue_0078FF,
      normalIcon: Icon(AppIcons.discover,size: 20.0,color: AppColors.black_666666,),
      selectedIcon:Icon(AppIcons.discover, size: 20.0, color: AppColors.blue_0078FF),
    ),
    TabItemBar(
      title: AppString.STR_MINE,
      titleNormalColor: AppColors.black_666666,
      titleSelectedColor: AppColors.blue_0078FF,
      normalIcon: Icon( AppIcons.user,size: 20.0,color: AppColors.black_666666,),
      selectedIcon: Icon(AppIcons.user, size: 20.0, color: AppColors.blue_0078FF),
    ),
  ];
  final List<Widget> tabPageList = [
    HomePage(),
    DiscoverPage(),
    MinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: _buildStackChildren(),
      ),
      bottomNavigationBar: BottomNavWidget(
        defaultSelectIndex: selectIndex,
        tabItemBarList: tabItemBarList,
        tabItemBarDidSelect: _bottomNavDidSelect,
      ),
    );
  }

  List<Widget> _buildStackChildren() {
    var children = <Widget>[];
    for (int i = 0; i < tabItemBarList.length; i++) {
      children.add(Offstage(
        offstage: selectIndex != i,
        child: tabPageList[i],
      ));
    }
    return children;
  }

  void _bottomNavDidSelect(int index) {
    if (selectIndex == index) {
      return;
    }
    setState(() {
      this.selectIndex = index;
    });
  }
}
